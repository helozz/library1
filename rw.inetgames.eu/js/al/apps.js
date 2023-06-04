(function(w) {
if (w.fastXDM) return;

var handlers = {};
var onEnvLoad = [];
var env = {};

// Key generation
function genKey() {
  var key = '';
  for (i=0;i<5;i++) key += Math.ceil(Math.random()*15).toString(16);
  return key;
}

function waitFor(obj, prop, func, self,  count) {
  if (obj[prop]) {
     func.apply(self);
  } else {
    count = count || 0;
    if (count < 1000) setTimeout(function() {
      waitFor(obj, prop, func, self, count + 1)
    }, 0);
  }
}

function attachScript(url) {
  setTimeout(function() {
    var newScript = document.createElement('script');
    newScript.type = 'text/javascript';
    newScript.src = url || w.fastXDM.helperUrl;
    waitFor(document, 'body', function() {      
      document.getElementsByTagName('HEAD')[0].appendChild(newScript);
    });
  }, 0);
}

// Env functions
function getEnv(callback, self) {
  if (env.loaded) {
    callback.apply(self, [env]);
  } else {
    onEnvLoad.push([self, callback]);
  }
}

function envLoaded() {
  env.loaded = true;
  if (onEnvLoad.length > 0) {
    for (callback in onEnvLoad) onEnvLoad[callback][1].apply(onEnvLoad[callback][0], [env]);
  }
}

function applyMethod(strData, self) {
  getEnv(function(env) {
    var data = env.json.parse(strData);
    if (data[0]) {
      if (!data[1]) data[1] = [];
      for (i in data[1]) {
        if (data[1][i] && data[1][i]._func) {
          var funcNum = data[1][i]._func;
          data[1][i] = function() {
            var args = Array.prototype.slice.call(arguments);
            args.unshift('_func'+funcNum);
            self.callMethod.apply(self, args);
          }
        }
      }
      setTimeout(function() {
        if (!self.methods[data[0]]) {
          throw Error('fastXDM: Method ' + data[0] + ' is undefined');
        }
        self.methods[data[0]].apply(self, data[1]);
      }, 0);
    }
  });
}

// XDM object
w.fastXDM = {
  _id: 0,
  helperUrl: 'http://userapi.com/js/api/xdmHelper.js',

  Server: function(methods) {
    this.methods = methods || {};
    this.id = w.fastXDM._id++;
    this.key = genKey();
    
    this.methods['%init%'] = this.methods['__fxdm_i'] = function() {      
      w.fastXDM.run(this.id);
      if (this.methods['onInit']) this.methods['onInit']();
    };
    this.frameName = 'fXD'+this.key;
    this.server = true;
    handlers[this.key] = [applyMethod, this];
  },
  
  Client: function(methods) {
    this.methods = methods || {};
    this.id = w.fastXDM._id++;
    w.fastXDM.run(this.id);
    if (window.name.indexOf('fXD') == 0) {
      this.key = window.name.substr(3);
    } else {
      throw Error('Wrong window.name property.');
    }
    this.caller = window.parent;
    handlers[this.key] = [applyMethod, this];
    this.client = true;
    
    w.fastXDM.on('helper', function() {
      w.fastXDM.onClientStart(this);
    }, this);
    
    getEnv(function(env) {
      env.send(this, env.json.stringify(['%init%']));
      
      var methods = this.methods;
      setTimeout(function() {
        if (methods['onInit']) methods['onInit']();
      }, 0);
    }, this);
  },
  
  onMessage: function(e) {
    if (!e.data) return false;
    var key = e.data.substr(0, 5);
    // s(JSON.stringify(handlers));
    if (handlers[key]) handlers[key][0](e.data.substr(6), handlers[key][1]);
  },
  
  setJSON: function(json) {
    env.json = json;
  },
  
  getJSON: function(callback) {
    if (!callback) return env.json;
    getEnv(function(env) {
      callback(env.json);
    });
  },
  
  setEnv: function(exEnv) {
    for (i in exEnv) {
      env[i] = exEnv[i];
    }
    envLoaded();
  },
  
  _q: {},
  
  on: function(key, act, self) {
    if (!this._q[key]) this._q[key] = [];
    if (this._q[key] == -1) {
      act.apply(self);
    } else {
      this._q[key].push([act, self]);
    }
  },
  
  run: function(key) {
    if (this._q[key] && this._q[key].length > 0) {
      for (i in this._q[key]) this._q[key][i][0].apply(this._q[key][i][1]);
    }
    this._q[key] = -1;
  },
  
  waitFor: waitFor
}


w.fastXDM.Server.prototype.start = function(obj, count) {
  if (obj.contentWindow) {
    this.caller = obj.contentWindow;
    this.frame = obj;
    
    w.fastXDM.on('helper', function() {
      w.fastXDM.onServerStart(this);
    }, this);

  } else { // Opera old versions
    var self = this;
    count = count || 0;
    if (count < 50) setTimeout(function() {
      self.start.apply(self, [obj, count+1]);
    }, 100);
  }
}

w.fastXDM.Server.prototype.destroy = function() {
  handlers.splice(handlers.indexOf(this.key), 1);
}

function extend(obj1, obj2){
  for (var i in obj2) {
    if (obj1[i] && typeof(obj1[i]) == 'object') {
      extend(obj1[i], obj2[i])
    } else {
      obj1[i] = obj2[i];
    }
  }
}

w.fastXDM.Server.prototype.append = function(obj, options) {
  var div = document.createElement('DIV');
  div.innerHTML = '<iframe name="'+this.frameName+'" />';
  var frame = div.firstChild;
  var self = this;
  setTimeout(function() {
    frame.frameBorder = '0';
    if (options) extend(frame, options);
    obj.insertBefore(frame, obj.firstChild);
    self.start(frame);
  }, 0);
  return frame;
}

w.fastXDM.Client.prototype.callMethod = w.fastXDM.Server.prototype.callMethod = function() {
  var args = Array.prototype.slice.call(arguments);
  var method = args.shift();
  for (i in args) {
    if (typeof(args[i]) == 'function') {
      this.funcsCount = (this.funcsCount || 0) + 1;
      var func = args[i];
      var funcName = '_func' + this.funcsCount;
      this.methods[funcName] = function() {
        func.apply(this, arguments);
        delete this.methods[funcName];
      }
      args[i] = {_func: this.funcsCount};
    }
  }
  waitFor(this, 'caller', function() {
    w.fastXDM.on(this.id, function() {
      getEnv(function(env) {
        env.send(this, env.json.stringify([method, args]));
      }, this);
    }, this);
  }, this);
}

if (w.JSON && typeof(w.JSON) == 'object' && w.JSON.parse && w.JSON.stringify && w.JSON.stringify({a:[1,2,3]}).replace(/ /g, '') == '{"a":[1,2,3]}') {
  env.json = {parse: w.JSON.parse, stringify: w.JSON.stringify};
} else {
  w.fastXDM._needJSON = true;
}

// PostMessage cover
if (w.postMessage) {
  env.protocol = 'p';
  env.send = function(xdm, strData) {
    xdm.caller.postMessage(xdm.key+':'+strData, "*");
  }
  if (w.addEventListener) {
    w.addEventListener("message", w.fastXDM.onMessage, false);
  } else {
    w.attachEvent("onmessage", w.fastXDM.onMessage);
  }
  
  if (w.fastXDM._needJSON) {
    w.fastXDM._onlyJSON = true;
    attachScript(); 
  } else {
    envLoaded();
  }
} else {
  attachScript();  
}

})(window);


function appCallback(args) {
  var method = args.shift();
  debugLog(method, args);
  if (cur.app && cur.app.funcs) {
    if (!cur.app.funcs[method]) {
      setTimeout(function() {
        throw new Error('unsupported app method: ' + method);
      }, 0);
    }
    setTimeout(function() {
      return cur.app.funcs[method].apply(cur.app, args);
    }, 0);
    return true;
  }
  return true;
}

var vkApp = function(cont, options, params, onInit) {
  var self = this;
  this.cont = ge(cont);
  if (!this.cont) {
    return;
  }
  params = params || {};
  params.hash = params.hash || location.hash.substr(1);
  this.params = params;
  
  this.onReady = new Array();
  
  if (options.type == 1) { // IFrame
    var url = options.src;
    var urlParams = [];
    for (var i in params) {
      if (i == 'hash') {
        urlParams.push(i+'='+encodeURIComponent(params[i]));
      } else {
        urlParams.push(i+'='+params[i]);
      }
    }
    url += ((url.indexOf('?') == -1) ? '?' : '&') + urlParams.join('&');
  }
  if (options.inlineApp) {
    self.inlineApp = true;
  }
  self.options = extend({
    heightMax:  4500
  }, options);

  this.funcs = {
    onInit: function() {
      if (options.heightSync) {
        self.RPC.callMethod('getHeight', function(height) {
          self.setHeight(height)
        })
      }
      if (!self.inited) {
        self.inited = true;
        if (onInit) onInit();
        if (!self.inlineApp) {
          self.onAppReady();
        }
      }
      return true;
    },
    ApiCall: function(args, callback) { 
      var method = args.shift();
      self.api(method, args[0], callback)
    },
    _getAppInfo: function(callback) {
      callback([self.params.api_id, window.location.hash]);
    },
    api: function(callId, method, args) { // flash callbacks
      self.api(method, args, function(data) {
        self.apiCallback(callId, data);
      });
    },
    setHeight: function(height) {
      self.setHeight(height);
    },
    scrollWindow: function(y, speed) {
      if (self.inlineApp) return;
      var scrollTop = Math.max(y, 0);
      speed = intval(speed);
      if (speed && speed > 0) {
        animate(htmlNode, {scrollTop: scrollTop}, speed);
        animate(bodyNode, {scrollTop: scrollTop}, speed);
      } else {
        window.scroll(0, scrollTop);
      }
    },
    scrollTop: function() {
      cur.app.runCallback('onScrollTop', parseInt(document.body.scrollTop || document.documentElement.scrollTop || window.pageYOffset));
    },
    saveWallPost: function(hash) {
      //alert('wallpost '+hash);
      showBox('al_apps.php', {act: 'save_wall_post_box', hash: hash, aid: cur.aid});
    },
    showProfilePhotoBox: function(hash) {
      showBox('al_apps.php', {act: 'show_profile_photo_box', hash: hash, aid: cur.aid});
    },
    setTitle: function(text) {
      if (self.inlineApp) return;
      text.replace(/[<>]+/gi, '');
      document.title = getLang('global_vkontakte')  + (text ? (' | ' + text) : '');
    },
    resizeWindow: function(width, height) {
      self.setWidth(width);
      self.setHeight(height);
    },
    setLocation: function(loc, fireEvent) {
      loc = loc.toString();
      cur.appLoc = loc;
      if (fireEvent) {
        cur.app.runCallback('onLocationChanged', loc);
      }
      nav.change({'#': loc});
    },
    setNavigation: function() {
      return;
    },
    showInstallBox: function() {
      if (cur.appUser) {
        Apps.onAppAdded();
      } else {
        showBox('apps', {act: 'install_box', aid: options.aid});
      }
    },
    showSettingsBox: function(mask) {
      if (cur.settingsBoxShown) {
        return;
      }
      cur.settingsBoxShown = true;
      var box = showBox('apps', {act: 'settings_box', aid: options.aid, mask: mask});
      box.setOptions({onHide: function() {
        setTimeout(function() {
          cur.settingsBoxShown = false;
        }, 3000);
      }});
    },
    showInviteBox: function()  {
      Apps.showInviteBox(options.aid, options.hash);
    },
    showPaymentBox: function(votes) {
      showBox('al_apps.php', {act: 'show_payment_box',  votes: votes, aid: options.aid});
    },
    showMerchantPaymentBox: function(params) {
      if (self.inlineApp) return;
      if (typeof params != 'object') {
        var args = Array.prototype.slice.call(arguments);
        params = {};
        each(args, function(){
          var kv = this.split('=');
          if (kv.length == 2) params[kv[0]] = kv[1];
        });
      }
      // Clear parameters
      var trash = [];
      for (var i in params) {
        if ((i == 'merchant_id') || (i == 'required_fields')) {
          continue;
        }
        if (i.indexOf('custom_') == 0) {
          continue;
        }
        if (i.indexOf('item_') == 0) {
          var part = i.substr(5);
          var allowed = ['id_', 'name_', 'description_', 'price_', 'currency_', 'quantity_', 'photo_url_', 'digital_'];
          var found = false;
          for (var j in allowed) {
            if (part.indexOf(allowed[j]) == 0) {
              found = true;
              break;
            }
          }
          if (found) {
            continue;
          }
        }
        trash.push(i);
      }
      
      // Test mode
      var testMode = 1;
      if ('test_mode' in params) {
        testMode = ((params.test_mode.toString() == '0') ? 0 : 1);
      }
      
      for (var i in trash) {
        delete params[trash[i]];
      }
      
      params.show_in_box = 1;
    
      var url = testMode ? 'al_paytest.php' : 'al_pay.php';
      
      //stManager.add(['selects.js']);
      cur.payMerchantBox = showBox(url, params, {
        params: {
          bodyStyle: 'padding: 0;',
          width: 534
        },
        stat: ['selects.js', 'pay.css', 'ui_controls.js', 'ui_controls.css']
      });
      
      cur.onMerchantPaymentCancel = function() {
        cur.app.runCallback('onMerchantPaymentCancel');
      }

      cur.onMerchantPaymentSuccess = function(merchant_order_id) {
        cur.app.runCallback('onMerchantPaymentSuccess', merchant_order_id);
      }

      cur.onMerchantPaymentFail = function(errorCode) {
        cur.app.runCallback('onMerchantPaymentFail', errorCode);
      }
    },
    debug: function() {
      //debugLog((arguments.length == 1) ? arguments[0] : arguments);
    }
  };
  
  if (params.widget) {
    self.options.type = 1;
    self.options.widget = true;
  } else if (self.options.type != 2) {
    renderFlash(ge('flash_api_external_cont'), {
      url: 'swf/api_external2_0.swf',
      id: 'flash_api_external',
      width: 1,
      height: 1,
      preventhide: 1,
      version: 9
    }, {
      allowFullScreen: true,
      allowscriptaccess: 'always',
      allownetworking: 'all',
      wmode: 'opaque'
    }, {
      debug: (params.debug ? 1 : 0),
      lc_name: params.lc_name
    });
    
    self.externalFrame = ge('flash_api_external');
  }
  switch (self.options.type) {
    case 1: // Iframe App
      this.RPC = new fastXDM.Server(this.funcs);
      var frameParams = {src: url, width: '100%', overflow: 'hidden', scrolling: 'no'};
      if (!self.options.widget) {
        frameParams.height = self.options.height+'px';
      }
      this.frame = this.RPC.append(self.cont, frameParams);
      break;
    case 2: // Flash Wrapper App
      var opts = {
        url: options.src,
        id: 'flash_app',
        width: self.options.width,
        height: self.options.height,
        version: 9
      }
      renderFlash(self.cont, opts, {allowFullScreen: true, allowscriptaccess: 'sameDomain', allownetworking: 'all', bgcolor: '#F7F7F7'}, params);
      self.frame = ge('flash_app');
      break;
    case 3: // flash app
      var opts = {
        url: options.src,
        id: 'flash_app',
        width: self.options.width,
        height: self.options.height,
        version: 9
      }
      renderFlash(self.cont, opts, {allowFullScreen: true, allownetworking: 'all', allowscriptaccess: 'never'}, params);
      self.frame = ge('flash_app');
      break;
  }
  
  if (params.widget) {
    setTimeout(function() {
      if (!self.inited) {
        show('app_connect_error');
      }
    }, 8000);
  }
  
  cur.destroy.push(function() {
    this.RPC.destroy();
  });

}

vkApp.prototype.onAppReady = function() {
  for (var i in this.onReady) {
    this.onReady[i]();
  }
  /*setTimeout(function() {
  cur.app.runCallback('onStageResize', 627, 230);
  }, 3000);*/
}

vkApp.prototype.runCallback = function() {
  var args = Array.prototype.slice.call(arguments);
  var method = args[0];
  var eventName = 'customEvent';
  if ('onLocationChanged,onMerchantPaymentSuccess,onBalanceChanged,onWindowResized,onSettingsChanged'.indexOf(method)!= -1) {
    eventName = method;
    var fArgs = args.slice(1);
  } else {
    var fArgs = args.slice();
  }
  switch(this.options.type) {
    case 1:
      this.RPC.callMethod('runCallback', args);
      if (!this.options.widget) {
        this.externalFrame[eventName](fArgs);
      }
      break;
    case 2:
      this.frame[eventName](fArgs);
      break;
    case 3:
      this.externalFrame[eventName](fArgs);
      break;
  }
}

vkApp.prototype.apiCallback = function(callId, data) {
  var args = Array.prototype.slice.call(arguments);
  try {
    if (this.options.type == 2) {
      this.frame.apiCallback(callId, data);
    } else {
      this.externalFrame.apiCallback(callId, data);
    }
  } catch(e) {
    // pass
  }
}

vkApp.prototype.setHeight = function(height) {
  if (!height) return;
  if (this.inlineApp && height > this.options.heightMax) {
    height = this.options.heightMax;
  }
  this.frame.style.height = this.cont.style.height = height + 'px';
}

vkApp.prototype.setWidth = function(width) {
  if (!width || this.inlineApp) return;
  var size = getSize(cur.app.cont);
  width = Math.min(Math.max(width, 100), size[0]);
  this.frame.style.width = this.cont.style.width = width + 'px';
}

vkApp.prototype.balanceUpdated = function(money) {
  debugLog('onBalanceChanged', money);
  this.runCallback('onBalanceChanged', money);
}

vkApp.prototype.checkMethod = function(method, params, callback) {
  var m = method.toLowerCase();
  if (m == 'wall.post' || m == 'activity.set') {
    showBox('apps', {
      act: 'wall_post_box',
      aid: this.options.aid,
      owner_id: params['owner_id'],
      attachment: params['attachment'],
      text: params[m == 'wall.post' ? 'message' : 'text']
    });
  
  
    var self = this;
    cur.apiWallPost = function(hash, error) {
      if (error) {
        if (callback)
          callback({error: error});
      } else {
        self.api(method, extend(params, {method_access: hash}), callback);
      }
    };
    return false;
  }
  return true;
}

vkApp.prototype.checkMethodResult = function(method, params, data, callback) {
  switch(method) {
    case 'photos.saveProfilePhoto':
      if (!data.error) {
        cur.profilePhotoBoxCallback = function(success) {
          if (success) {
            callback({response: {'photo_src': data.response['photo_src']}});
          } else {
            callback({error: {error_code: 10007, error_msg: "Operation denied by user"}});
          }
          window.profilePhotoBoxCallback = false;
        }
        cur.app.funcs.showProfilePhotoBox(data.response['photo_hash']);
        return false;
      }
      break;
  }
  return true;
}

vkApp.prototype.onLocChanged = function(strLoc) {
  //if (cur.appLoc == strLoc) return;
  if (!strLoc) {
    strLoc = '';
  }
  if (cur.appLoc == strLoc) return;
  cur.appLoc = strLoc;
  this.runCallback('onLocationChanged', strLoc);
}

vkApp.prototype.api = function(method, inputParams, callback, captcha) {
  var self = this;
  if (arguments.length == 2) {
    callback=params;  
    inputParams={};
  }
    
  if (!inputParams) {
    inputParams = {};
  }
  
  if (!captcha && !inputParams.method_access && !inputParams.method_force && !this.checkMethod(method, inputParams, callback)) {
    return;
  }
  
  var params = {
    v: '3.0',
    api_id: this.params.api_id,
    method: method,
    format: 'json',
    rnd: parseInt(Math.random()*10000)
  }
  
  if (inputParams) {
    for (var i in inputParams) {
      params[i] = inputParams[i];
    }
  }
  
  var lParams=[];
  for (i in params) {
    lParams.push([i,params[i]]);
  }
  
  function sName(i, ii) {
    if (i[0] > ii[0])
    return 1;
    else if (i[0] < ii[0])
    return -1;
    else
    return 0;
  }
  
  lParams.sort(sName);
  var sig = this.params.viewer_id;
  for (i in lParams) {
    sig += lParams[i][0] + '=' + lParams[i][1];
  }
  sig += this.params.secret;
  params.sid = this.params.sid;
  
  stManager.add('md5.js', function() {
    params.sig = MD5(sig);
    //debugLog('VK.api: ' + method);
    var done = function(text) {
      var response = eval('('+text+')');
      if (response.error && response.error.error_code == 14) { // Captcha needed
        cur.appCaptcha = showCaptchaBox(response.error.captcha_sid, 0, false, {
          onSubmit: function(sid, value) {
            inputParams['captcha_sid'] = sid;
            inputParams['captcha_key'] = value;
            self.api(method, inputParams, callback, true);;
          },
          onHide: function() {
            callback(response);
          },
          imgSrc: response.error.captcha_img
        });
      } else {
        if (captcha) {
          cur.appCaptcha.setOptions({onHide: function(){}}).hide();
        }
        if (!self.checkMethodResult(method, inputParams, response, callback)) {
          return;
        } else if (callback) {
          callback(response);
        }
      }
    }
    var fail = function() {
      debugLog('Ajax fail');
    }

    ajax.plainpost(self.params['api_script'] || '/api.php', params, done, fail);    
  });
}

var Apps = {
  address: 'apps',
  init: function(obj, appTpl, appRecTpl) {
    extend(cur, {
      searchCont: ge('apps_search'),
      aSearch: ge('s_search'),
      clearSearch: ge('apps_query_reset'),
      aContent: ge('app_rows'),
      sContent: ge('app_search_list'),
      sPreload: ge('app_search_preload'),
      sWrap: ge('app_search_wrap'),
      summary: ge('apps_summary'),
      sSummary: ge('app_search_summary'),
      progress: ge('apps_summary_progress'),
      showMore: ge('more_link'),
      sShowMore: ge('s_more_link'),
      showRecMore: ge('rec_more_link'),
      recommendations: ge('app_recommend'),
      appTpl: appTpl,
      appRecTpl: appRecTpl
    });
    extend(cur, obj);
    extend(cur, {
      defaultCount: cur.shownApps,
      appsPerPage: 20,
      recsPerPage: 15,
      settingsPerPage: 10,
      recsInitCount: 20,
      deletedCount: 0
    });
    if (cur.recJSON) {
      cur.recCount = cur.recJSON.length;
    }
    //cur.disableAutoMore = true;
    cur.aSearch.value = '';
    placeholderSetup(cur.aSearch, false, true);
    
    Apps.scrollnode = browser.msie6 ? pageNode : window;
    window.scrollTop = bodyNode.scrollTop = pageNode.scrollTop = htmlNode.scrollTop = 0;
    addEvent(Apps.scrollnode, 'scroll', Apps.scrollCheck);
    addEvent(window, 'resize', Apps.scrollCheck);
    addEvent(cur.aSearch, 'blur', Apps.searchBlur);
    addEvent(cur.aSearch, 'focus', Apps.searchFocus);
    cur.destroy.push(function() {
      removeEvent(Apps.scrollnode, 'scroll', Apps.scrollCheck);
      removeEvent(window, 'resize', Apps.scrollCheck);
      removeEvent(cur.aSearch, 'blur', Apps.searchBlur);
      removeEvent(cur.aSearch, 'focus', Apps.searchFocus);
    });
    setTimeout(function() {
      if (cur.add) {
        ge('s_gr_search').focus();
      } else {
        cur.aSearch.focus();
      }
    }, 0);
    
    cur.apps = {};
    
    if (!cur.silent_mode) return;
    cur.silent = true;
    var query = {act: 'load_apps_silent', gid: cur.gid, section: cur.section};
    ajax.post(Apps.address, query, {onDone: (function(data, opts) {
      opts = eval('('+opts+')');
      extend(cur, opts);
      var obj = eval('('+data+')');
      if (!obj) {
        return;
      }
      cur.searchOffset = 0;
      cur.appsList = obj.all ? obj : {all:[]};
      cur.silent = false;
      cur.curList = 'all';
      cur.sectionCount = (cur.appsList[cur.curList] || []).length;
      this.indexAll(function() {
        if (cur.onSilentLoad) {
          cur.onSilentLoad();
        }
      });
    }).bind(this)});
  },
  
  initAppView: function(params, options) {
    cur.nav.push(function(changed, old, n, opt) {
      if (changed['0'] === undefined && !changed['join']) {
        if (changed['#']) {
          cur.app.onLocChanged(changed['#']);
          if (opt.back) {
            if (vk.al != 3) {
              nav.setLoc(n);
            }
          } else {
            nav.setLoc(n);
          }
          return false;
        } else {
          nav.setLoc(n);
          return false;
        }
      }
    });
    
    var stateCallback = function(e) {
      if (e.type == 'block') {
        cur.app.runCallback('onWindowBlur');
      } else {
        cur.app.runCallback('onWindowFocus');
      }
    };
    
    cur.app.onReady.push(function() {
      //alert('inited');
      cur.app.onLocChanged(params.hash);
      addEvent(document, 'block unblock', stateCallback, true);
      cur.destroy.push(function() {
        removeEvent(document, 'block unblock', stateCallback);
      });
    });
    
    if (options.icon) {
      setFavIcon(options.icon);
      cur.destroy.push(function() {
        setFavIcon('/images/faviconnew.ico');
      });
    }
  },
  
  setFooter: function() {
    setTimeout(function() {
      var pageFooter = ge('footer_wrap');
      cur.footerBackup = pageFooter.innerHTML;
      pageFooter.innerHTML = cur.footer;
      cur.destroy.push(function() {
        pageFooter.innerHTML = cur.footerBackup;
      });
      
      if (cur.appMenuItems) {
        var p_options = [];
        for (var i in cur.appMenuItems) {
          var item = cur.appMenuItems[i];
          p_options.push({i:i, l:item[0], onClick: (function(item) {
            eval(item[1]);
            cur.adminMenu.hide();
            return false;
          }).pbind(item)})
        }
        cur.adminMenu = new DropdownMenu(p_options, {
          target: ge('apps_admin_menu'),
          containerClass: 'dd_menu_posts'
        });
      }
    }, 0);
  },
  
  installApp: function(aid, hash, callback) {
    ajax.post(Apps.address, {act: 'do_install', aid: aid, hash: hash}, {onDone: function() {
      Apps.onAppAdded();
      if (callback) {
        callback();
      }
    }});
  },
  
  onAppAdded: function() {
    if (cur.app) {
      cur.app.runCallback('onApplicationAdded');
      cur.appUser = true;
      hide('apps_install_btn');
      show('apps_show_settings');
    }
  },
  
  loadSettings: function() {
    if (Apps.settingsLoading) return;
    Apps.settingsLoading = true;
    ajax.post('apps', {act: 'show_settings', aid: cur.aid}, {
      onDone: function(btnText, settCont) {
        Apps.settingsLoading = false;
        if (cur.settingsOnLoadCallback) {
          cur.settingsOnLoadCallback(btnText, settCont);
        } else {
          cur.settingsOnLoad = [btnText, settCont];
        }
      },
      onFail: function() {
        Apps.settingsLoading = false;
        if (cur.settingsonFailCallback) {
          cur.settingsonFailCallback();
        } else {
          cur.settingsonFail = true;
        }
      }
    });
  },
  
  showSettings: function(obj) {
    var cont = ge('apps_user_settings_cont');
    if (isVisible(cont)) {
      hide(cont);
      obj.innerHTML = cur.settBtnText;
      scrollToTop(200);
      cur.settingsOnLoadCallback = false;
    } else {
      if (!cur.settBtnText) {
        cur.settBtnText = obj.innerHTML;
      }
      
      var onDone = function(btnText, settCont) {
        cont.innerHTML = settCont;
        cur.settingsOnLoad = false;
        cur.settingsOnLoadCallback = false;
        show(cont);
        obj.innerHTML = cur.settBtnText;
      };
      
      var onFail = function() {
        cur.settingsOnLoad = false;
        show(cont);
        obj.innerHTML = cur.settBtnText;
      }
      
      if (cur.settingsOnLoad) {
        onDone.apply(this, cur.settingsOnLoad);

      } else if (cur.settingsonFail) {
        onFail();
      } else {
        cur.settingsOnLoadCallback = onDone;
        cur.settingsOnFailCallback = onFail;
        /*cont.innerHTML = '<div class="apps_user_info"><div style="padding: ' + padding + 'px 0px;" align="center"><img src="/images/upload.gif" /></div></div>';
        slideDown(cont, 300);*/
        obj.innerHTML = '<img src="/images/upload.gif" />';
        Apps.loadSettings();
      }
    }
  },
  
  saveSettings: function(aid, hash, onlyCheckboxes) {
    if (!onlyCheckboxes) {
      //hide('apps_user_settings_cont');
      //ge('apps_show_settings').innerHTML = '<img src="/images/upload.gif" />';
      //scrollToTop(200);
      show('apps_settings_progress');
    }
    
    var payAdd = ge('app_pay_add');
    var payWidthdraw = ge('app_pay_withdraw');
    
    ajax.post('apps', {
      act: 'save_settings',
      aid: aid,
      hash: hash,
      from: 'appview',
      app_settings_1: isChecked(ge('app_settings_1')),
      app_settings_256: isChecked(ge('app_settings_256')),
      add: (payAdd ? payAdd.value : 0),
      withdraw: (payWidthdraw ? payWidthdraw.value : 0),
      only_checkboxes: (onlyCheckboxes ? 1 : 0)
    }, {
      onDone: function(result) {
        geByTag('ol', ge('side_bar'))[0].innerHTML = result['left_nav'];
        if (!onlyCheckboxes) {
          ge('apps_show_settings').innerHTML = cur.settBtnText;
          hide('apps_user_settings_cont');
          hide('apps_settings_progress');
          scrollToTop(200);
          cur.app.runCallback('onSettingsChanged', result.settings);
        }
        cur.settingsOnLoad = false;
        if (result.coins) {
          cur.app.balanceUpdated(result.coins);
        }
      },
      onFail: function(text) {
        ge('apps_settings_error').innerHTML = text;
        show('apps_settings_error');
        hide('apps_settings_progress');
        scrollToTop(200);
      }
    });
  },
  
  searchFocus: function() {
    var alist = ge('apps_results');
    if (!hasClass(alist, 'light')) addClass(alist, 'light');
  },
  
  searchBlur: function() {
    var alist = ge('apps_results');
    if (hasClass(alist, 'light')) removeClass(alist, 'light');
  },
  
  scrollCheck: function () {
    if (browser.mobile || cur.isAppsLoading  || cur.disableAutoMore) return;
    if (!isVisible(cur.showMore) && !isVisible(cur.sShowMore) && !isVisible(cur.showRecMore)) return;
    if (!cur.curList && cur.section != 'catalog') {
      setTimeout(Apps.scrollCheck, 50);
      return;
    }
    
    var docEl = document.documentElement;
    var ch = window.innerHeight || docEl.clientHeight || bodyNode.clientHeight;
    var st = window.pageYOffset || pageNode.scrollTop || docEl.scrollTop;

    if (isVisible(cur.showMore) && cur.section != 'settings' && st + ch + 400 > cur.showMore.offsetTop) {
      Apps.showRows(true);
    }

    if (isVisible(cur.showRecMore) && st + ch + 400 > cur.showRecMore.offsetTop) {
      Apps.showMoreRecommendations();
    }
    
    if (isVisible(cur.sShowMore) && st + ch + 400 > cur.sShowMore.offsetTop) {
      Apps.loadRows();
    }
  },
  
  indexAll: function(callback) {
    var all = cur.appsList['all'];
    
    cur.appsIndex = new vkIndexer(all, function(obj) {
      cur.apps[parseInt(obj[0])] = obj;
      return obj[3];
    }, function() {
        if (callback) {
          callback();
        }
    });
  },
  
  drawApp: function(app, last, edit) {
    return cur.appTpl(app, last, edit);
  },
  
  drawRecApp: function(app, last) {
    return cur.appRecTpl(app, last);
  },
  
  updateList: function(e, obj) {
    if (cur.section == 'catalog') {
      var force = (e === false) || e && (e.keyCode == 10 || e.keyCode == 13);
      if (force || cur.searchSort) {
        this.filterTimeout = setTimeout((function() {
          var str = trim(obj.value);
          if (str == cur.searchStr && !force) {
            return;
          }
          if (str) {
            addClass(cur.clearSearch, 'shown');
          } else {
            removeClass(cur.clearSearch, 'shown');
          }
          if (force) {
            cur.searchStr = str;
            cur.searchOffset = 0;
            var sort = (cur.searchSort)  ? cur.searchSort : 1;
            show(ge('apps_search_filter'));
            addClass(cur.searchCont, 'loading');
            Apps.updateFilter(cur.searchType, sort);
            Apps.catalogSearch(cur.searchStr, cur.searchOffset);
          }
        }).bind(this), 10);
        clearTimeout(this.searchTimeout);
      }
      if (force) return;
    }
    if (cur.silent) {
      cur.onSilentLoad = function() {
        Apps.updateList(e, obj, true);
      };
    }
    clearTimeout(this.filterTimeout);
    this.filterTimeout = setTimeout((function() {
      var str = trim(obj.value);
      if (str == cur.searchStr && !cur.justAdded && !cur.justRemoved && !(cur.section == 'catalog' && !cur.searchSort)) {
        return;
      }
      if (cur.justRemoved) {
        delete cur.justRemoved;
      }
      if (str) {
        addClass(cur.clearSearch, 'shown');
      } else {
        removeClass(cur.clearSearch, 'shown');
      }
      if (cur.section == 'apps' && str.length < 2) {
        Apps.hideSearchResults();
      }
      cur.searchStr = str;
      cur.loadMore = 1;
      this.searchApps(str, 'all');
      scrollToTop();
    }).bind(this), 10);
  },
  
  searchApps: function(str, type) {
    cur.shownApps = 0;
    cur.curSection = type;
    if (str) {
      var htmlentities = function(s){
        var el = document.createElement('div');
        el.innerText = el.textContent = s;
        s = el.innerHTML;
        delete el;
        return s.split('"').join('&quot;');
      }
      var htmlencode = function(str){
        var aStr = str.split(''), i = aStr.length, aRet = [];
        while (i--) {
          var iC = aStr[i].charCodeAt();
          if (iC == 39 || (iC > 127 && iC < 1040) || iC > 1103) {
            aRet.push('&#'+iC+';');
          } else if (iC == 36) {
            aRet.push('&#0'+iC+';');
          } else {
            aRet.push(htmlentities(aStr[i]));
          }
        }
        return aRet.reverse().join('');
      }
      var res = cur.appsIndex.search(htmlencode(str));
      var newList = cur.curSection;
      newList += '_search_'+str;
      cur.curList = newList;
      cur.appsList[cur.curList] = res;
      
      str += ' '+(parseLatin(str) || '');
      str = trim(escapeRE(str).split('&').join('&amp;'));
      cur.selection = {
        re: new RegExp('('+str.replace(cur.appsIndex.delimiter, '|')+')', 'gi'),
        val: '<span>$1</span>'
      };
    } else {
      cur.curList = cur.curSection;
      cur.selection = false;
    }
    
    cur.sectionCount = (cur.appsList[cur.curList]) ? cur.appsList[cur.curList].length : 0;
    this.filterTimeout = setTimeout((function() {
      hide(cur.sShowMore);
      cur.searchOffset = 0;
      if (cur.section == 'catalog' && !cur.searchSort) {
        this.showMoreRecommendations(true);
      } else {
        this.showRows(false);
      }
      if (cur.section == 'apps' && (cur.sectionCount || !cur.sectionCount && cur.searchStr.length < 2) || cur.section == 'catalog') {
        this.changeSummary();
      }
    }).bind(this), 10);
  },
  
  clearSearch: function(el, event) {
    setStyle(el, {opacity: .6});
    cur.aSearch.setValue('');
    removeClass(cur.clearSearch, 'shown');
    cur.searchStr = '';
    if (cur.section == 'catalog') {
      if (cur.searchSort) {
        cur.searchOffset = 0;
        addClass(cur.searchCont, 'loading');
        this.catalogSearch(cur.searchStr, cur.searchOffset);
      } else {
        this.updateList(null, cur.aSearch);
      }
      return;
    }
    this.hideSearchResults();
    this.searchApps('', 'all');
    scrollToTop();
  },
  
  showRows: function(force) {
    if (cur.silent) {
      cur.onSilentLoad = function() {
        Apps.showRows(force);
      };
      return;
    }
    if (cur.section == 'settings') {
      this.showSettingsRows();
      return;
    }
    if (!cur.justAdded){
      if (ge('apps_message')) hide('apps_message');
    } else {
      show('apps_message');
      delete cur.justAdded;
    }
    var list = cur.appsList[cur.curList] || [];
    list = Apps.filter(list).sort(function(a,b) {return a._order - b._order});
    cur.sectionCount = list.length;
    var start = cur.shownApps;
    var count = (cur.searchStr || force) ? cur.appsPerPage : cur.defaultCount;
    var end = start + count;
    if (!list || !list.length) {
      var msg;
      if (!cur.searchStr && cur.appsList['all'].length <= cur.deletedCount) {
        if (cur.id == vk.id) {
          msg = getLang('apps_youhavenoapps')+"<br /><a onclick=\"show(cur.progress); return nav.go(this, event);\" href=\"apps?act=catalog\">"+getLang('apps_viewallapps')+" &raquo;</a>";
        } else if (cur.gid){
          msg = getLang('apps_noappsingroup2');
          if (cur.isGroupAdmin) msg += "<br /><a onclick=\"show(cur.progress); return nav.go(this, event);\" href=\"apps?act=catalog&gid="+cur.gid+"\">"+getLang('apps_viewallapps')+" &raquo;</a>";
        } else {
          msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
        }
        cur.aContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
      } else {
        if (cur.searchStr.length < 2) {
          msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
          cur.aContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
        }
      }
      hide(cur.showMore);
    } else {
      if (!cur.shownApps) cur.aContent.innerHTML = '';
      var apps = list.slice(start, end);
      if (!apps.length) {
        if (cur.shownApps >= cur.sectionCount) {
          hide(cur.showMore);
          if (cur.searchStr && cur.searchStr.length >= 2) {
            this.loadRows();
          }
        }
        return;
      }
      var html = [];
      for (i in apps) {
        var app = apps[i].slice();
        var last = (cur.shownApps == cur.sectionCount - 1);
        if (cur.selection) {
          app[3] = app[3].replace(cur.selection.re, cur.selection.val);
        }
        html.push(Apps.drawApp(app, last));
        cur.shownApps += 1;
      }
      var au = ce('div', {innerHTML: html.join('')});
      while (au.firstChild) {
        cur.aContent.appendChild(au.firstChild);
      }
    }
    if (cur.shownApps >= cur.sectionCount) {
      hide(cur.showMore);
      if (cur.searchStr && cur.searchStr.length >= 2) {
        this.loadRows();
      }
    } else {
      show(cur.showMore);
    }
  },
  
  loadRows: function() {
    if (cur.section == 'settings') {
      if (!cur.sectionCount) {
        Apps.changeSummary();
        msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
        cur.aContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
      }
      return;
    }
    if (cur.sPreload.innerHTML) {
      while (cur.sPreload.firstChild) {
        cur.sContent.appendChild(cur.sPreload.firstChild);
      }
    }
    if (!cur.loadMore) {
      cur.loadMore = 1;
      hide(cur.sShowMore);
      return;
    }
    if (cur.section == 'catalog') {
    if (!cur.searchStr) cur.searchStr = '';
      Apps.catalogSearch(cur.searchStr, cur.searchOffset);
      return;
    }
    clearTimeout(this.searchTimeout);
    this.searchTimeout = setTimeout((function() {
      Apps.searchRequest(cur.searchStr, cur.searchOffset);
    }).bind(this), 300);
  },
  
  searchRequest: function(val, offset) {
    if (!val) return;
    if (val[val.length - 1] == ' ') {
      val[val.length - 1] = '_';
    }
    addClass(cur.searchCont, 'loading');
    setStyle(cur.clearSearch, {opacity: .6});
    var query = {act: 'search', q: val, offset: offset, oid: cur.oid, from: cur.section};
    ajax.post(Apps.address, query, {onDone: function(res, preload, options) {
        removeClass(cur.searchCont, 'loading');
        var newVal = cur.searchStr;
        if (newVal[newVal.length - 1] == ' ') {
          newVal[newVal.length - 1] = '_';
        }
        if (val != newVal) {
          return;
        }
        if (res) {
          cur.sContent.innerHTML = res;
        }
        if (preload) {
          cur.sPreload.innerHTML = preload;
          cur.hasMore = true;
        } else {
          cur.hasMore = false;
        }
        Apps.applyOptions(options);
        show(cur.sContent);
        if (!cur.sectionCount) {
          hide(cur.sWrap);
          Apps.changeSummary(true);
          cur.aContent.innerHTML = '';
          if (!cur.searchCount && !res && !preload) {
            msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
            cur.aContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
            hide(cur.showMore);
            hide(cur.sContent);
          }
        } else {
          if (cur.searchCount) {
            cur.sSummary.innerHTML = langNumeric(cur.searchCount, cur.summaryLang['apps_found'], true);
            show(cur.sWrap);
          } else {
            Apps.hideSearchResults();
            hide(cur.sWrap);
          }
        }
        Apps.scrollCheck();
      },
      onFail: function() {
        removeClass(cur.searchCont, 'loading');
      },
      showProgress: function () {
        cur.isAppsLoading = true;
      },
      hideProgress: function () {
        cur.isAppsLoading = false;
      }
    });
  },
  
  applyOptions: function(options) {
    extend(cur, options);
    if (!cur.hasMore) {
      hide(cur.sShowMore);
    } else {
      show(cur.sShowMore);
    }
  },
  
  hideSearchResults: function() {
    if (!cur.sContent) return;
    setTimeout(function(){
      cur.sContent.innerHTML = '';
      cur.sPreload.innerHTML = '';
      hide(cur.sContent);
      hide(cur.sWrap);
    }, 0);
  },
  
  showMoreRecommendations: function(force) {
    if (cur.silent) {
      cur.onSilentLoad = function() {
        Apps.showMoreRecommendations(force);
      };
      return;
    }
    var list = cur.appsList[cur.curList];
    if (!list || list.length == 0) {
      msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
      cur.sContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
      hide(cur.showRecMore);
      return;
    }
    
    if (force) cur.shownRecs = 0;
    
    var start = cur.shownRecs;
    var count = force ? cur.recsInitCount : cur.recsPerPage;
    var end = start + count;
    
    if (!cur.shownRecs || force) cur.sContent.innerHTML = '';
    var apps = list.slice(start, end);
    var html = [];
    for (i in apps) {
      var last = (cur.shownRecs == cur.sectionCount - 1);
      var app = apps[i].slice();
      if (cur.selection) {
        app[3] = app[3].replace(cur.selection.re, cur.selection.val);
      }
      html.push(Apps.drawRecApp(app, last));
      cur.shownRecs += 1;
    }
    var au = ce('div', {innerHTML: html.join('')});
    while (au.firstChild) {
      cur.sContent.appendChild(au.firstChild);
    }
    show(cur.recommendations);
    
    if (cur.shownRecs >= cur.sectionCount) {
      hide(cur.showRecMore);
    } else {
      show(cur.showRecMore);
    }
  },
  
  filter: function(arr) {
    var len = arr.length;
    var res = [];
    for (var i = 0; i < len; i++) {
      var t = arr[i];
      if (cur.apps && cur.apps[t[0]] && !cur.apps[t[0]].deleted) {
        res.push(t);
      }
    }
    return res;
  },
  
  showAppSettings: function(aid) {
    showBox(Apps.address, {act: 'settings_box', aid: aid, mask: 0, main: 1});
  },
  
  showInviteBox: function(aid, hash) {
    if (!aid) {
      aid = cur.app.options.aid;
      hash = cur.app.options.hash;
    }
    showTabbedBox('al_friends.php', {act: 'select_friends_box', checked: '', invite: 1}, {stat: ['privacy.js', 'ui_controls.js', 'ui_controls.css'], cache: 1});
    cur.onFlistSave = function (ids, list) {
      ajax.post('apps', {act: 'invite_friends', aid: aid, friends: ids.join(','), hash: hash}, {
        onDone: function(title, text) {
          setTimeout(showFastBox({title: title}, text, getLang('global_close')).hide, 2000);
        },
        onFail: function(text) {
          setTimeout(showFastBox({title: getLang('global_error')}, text, getLang('global_close')).hide, 2000);
          return true;
        }
      })
    }
  },
  
  addApp: function(aid, hash) {
    if (cur.adding) return false;
    cur.adding = true;
    ajax.post(Apps.address, {act: 'join', gid: cur.gid, id: aid, hash: hash, from: 'al_apps', section: cur.section}, {
      onDone: function(msg, res) {
        delete cur.adding;
        ge('app_add'+aid).innerHTML = msg;
        if (cur.section == 'apps') {
          var obj = eval('('+res+')');
          var all_list = cur.appsList['all'];
          if (all_list && all_list.length) {
            obj._order = all_list[0]._order - 1;
            cur.appsList['all'].splice(0,0,obj);
          } else {
            obj._order = 0;
            cur.appsList['all'] = [obj];
          }
          cur.apps[obj[0]] = obj;
          cur.appsIndex.add(obj);
          cur.defaultCount++;
        }
      },
      onFail: function() {
        delete cur.adding;
      }
    });
    return false;
  },
  
  removeApp: function(aid, hash, force) {
    if (cur.silent) {
      cur.onSilentLoad = function() {
        Apps.removeApp(aid);
      };
      return;
    }
    if (cur.deleting) {
      return false;
    }
    cur.deleting = true;
    show(cur.progress);
    var el = ge('app' + aid);
    if (window.tooltips && ge('delete_row' + aid)) {
      tooltips.hide(ge('delete_row' + aid))
    }
    if (ge('apps_message')) hide('apps_mesasge');
    var del = ge('delete_row' + aid);
    if (del) setStyle(del, {backgroundColor: '#FFF'});
    ajax.post(Apps.address, {act: 'quit', gid: cur.gid, id: aid, hash: hash, from: 'al_apps'}, {
      onDone: function(text) {
        delete cur.deleting;
        hide(cur.progress);
        cur.appsIndex.remove(cur.apps[aid]);
        cur.deletedCount++;
        cur.apps[aid].deleted = true;
        if (force) {
          cur.aSearch.value = '';
          // delete cur.apps[aid];
          cur.justRemoved = true;
          Apps.updateList(null, cur.aSearch);
          return;
        } else {
          if (!cur.deletedApps) cur.deletedApps = [];
          cur.deletedApps[aid] = el.innerHTML;
          var isLast = hasClass(el.firstChild, 'last');
          el.innerHTML = text;
          if (isLast) {
            var dld = geByClass1('dld', el);
            if (dld) addClass(dld, 'last');
          }
        }
        if (cur.section == 'apps') {
          cur.shownApps--;
          cur.sectionCount--;
          Apps.changeSummary();
        } else {
          var summaryLang, i = parseInt(cur.apps[aid][7]);
          cur.totalCounters[i]--;
          cur.shownCounters[i]--;
          var summaries = [ge('apps_summary'), ge('app_site_summary'), ge('app_desktop_summary')];
          switch (i) {
            case 1:
              curLang = cur.summaryLang['x_sites'];
              break;
            case 2:
              curLang = cur.summaryLang['x_desktops'];
              break;
            case 0:
            default:
              curLang = cur.summaryLang['x_apps'];
              break;
          }
          if (summaries[i]) summaries[i].innerHTML = langNumeric(cur.totalCounters[i], curLang, true);
        }
      },
      onFail: function() {
        delete cur.deleting;
        hide(cur.progress);
      }
    });
    return false;
  },
  
  restoreApp: function(aid, hash) {
    if (cur.restoring) {
      return false;
    }
    cur.restoring = true;
    show(cur.progress);
    var el = ge('app' + aid);
    ajax.post(Apps.address, {act: 'join', gid: cur.gid, id: aid, hash: hash, from: 'al_apps', section: cur.section}, {
      onDone: function(result) {
        delete cur.restoring;
        cur.deletedCount--;
        hide(cur.progress);
        el.innerHTML = cur.deletedApps[aid];
        delete cur.apps[aid].deleted;
        delete cur.deletedApps[aid];
        cur.appsIndex.add(cur.apps[aid]);
        if (cur.section == 'apps') {
          cur.shownApps++;
          cur.sectionCount++;
          Apps.changeSummary();
        } else {
          var summaryLang, i = parseInt(cur.apps[aid][7]);
          cur.totalCounters[i]++;
          cur.shownCounters[i]++;
          var summaries = [ge('apps_summary'), ge('app_site_summary'), ge('app_desktop_summary')];
          switch (i) {
            case 1:
              curLang = cur.summaryLang['x_sites'];
              break;
            case 2:
              curLang = cur.summaryLang['x_desktops'];
              break;
            case 0:
            default:
              curLang = cur.summaryLang['x_apps'];
              break;
          }
          if (summaries[i]) summaries[i].innerHTML = langNumeric(cur.totalCounters[i], curLang, true);
        }
      },
      onFail: function() {
        delete cur.restoring;
        hide(cur.progress);
      }
    });
    return false;
  },
  
  changeSummary: function(from_search) {
    var sum = ge('apps_summary');
    var html = '', count = (from_search) ? cur.searchCount : cur.sectionCount;
    
    if (cur.section == 'catalog' && !cur.searchSort) {
      html = getLang('apps_friends_apps');
    } else {
      if (cur.searchStr) {
        if (count) {
          var lang_key = (from_search) ? cur.summaryLang['apps_found'] : cur.summaryLang['x_apps'];
          html = langNumeric(count, lang_key, true);
        } else {
          html = cur.summaryLang['no_apps']
        }
      } else {
        if (count) {
          html = langNumeric(count, cur.summaryLang['x_apps_default'], true);
        } else {
          html = cur.summaryLang['no_apps_default']
        }
      }
    }
    sum.innerHTML = html;
  },
  
  showAppFriends: function(aid, ev) {
    return !showBox(Apps.address, {act: 'show_app_friends_box', aid: aid}, {cache: 1, params:{width: '400px', bodyStyle: 'padding: 2px'}, stat: ['boxes.css']}, ev);
  },
  
  switchTab: function(tab) {
    var el = ge('tab_' + tab);
    if (el) {
      each(geByTag('li', ge('apps_tabs')), function(i, e) {
        removeClass(e, 'active_link');
      });
      addClass(el, 'active_link');
    }
    show(cur.progress);
    nav.go({0: Apps.address, act: tab, mid: nav.objLoc.mid, gid: nav.objLoc.gid, add: nav.objLoc.add});
    //return;
  },
  
  listOut: function(obj) {
    if (!hasClass(obj, 'app_filter_selected')) {
      obj.className = 'app_filter';
    }
  },
  
  listOver: function(obj) {
    if (!hasClass(obj, 'app_filter_selected')) {
      obj.className = 'app_filter_over';
    }
  },
  
  filterByAppType: function(arr, type) {
    var len = arr.length;
    var res = [];
    for (var i = 0; i < len; i++) {
      var t = arr[i];
      if (type == t[7]) {
        res.push(t);
      }
    }
    return res;
  },
  
  filterByAppAdmin: function(arr) {
    var len = arr.length;
    var res = [];
    for (var i = 0; i < len; i++) {
      var t = arr[i];
      if (parseInt(t[8])) {
        res.push(t);
      }
    }
    return res;
  },
  
  updateFilter: function(type, sort) {
    if (sort !== undefined) {
      var el = ge('app_filter_' + sort);
      if (el) {
        each(geByTag('div', ge('apps_filters')), function(i, e) {
          if (!hasClass(e, 'app_filter_sep')) e.className = 'app_filter';
        });
        el.className = 'app_filter_selected';
      }
      if (cur.searchSort == sort) return;
      cur.searchSort = sort;
    }
    if (type) {
      if (cur.searchType == type) return;
      cur.searchType = type;
    }
    if (sort == 0) {
      hide(cur.sShowMore);
      hide(ge('apps_search_filter'));
      Apps.updateList(null, cur.aSearch);
      delete nav.objLoc.sort;
      delete nav.objLoc.type;
      delete nav.objLoc.q;
      nav.setLoc(nav.objLoc);
      return;
    }
    show(ge('apps_search_filter'));
    hide(cur.showRecMore);
    this.searchTimeout = setTimeout((function() {
      cur.searchStr = trim(cur.aSearch.value);
      cur.searchOffset = 0;
      show(cur.progress);
      Apps.catalogSearch(cur.searchStr, cur.searchOffset);
    }).bind(this), 10);
  },
  
  catalogSearch: function(val, offset) {
    if (val[val.length - 1] == ' ') {
      val[val.length - 1] = '_';
    }
    setStyle(cur.clearSearch, {opacity: .6});
    var query = {act: 'search', q: val, offset: offset, oid: cur.oid, from: cur.section, sort: cur.searchSort, type: cur.searchType};
    ajax.post(Apps.address, query, {onDone: function(res, preload, options) {
        removeClass(cur.searchCont, 'loading');
        hide(cur.progress);
        var newVal = cur.searchStr;
        if (newVal[newVal.length - 1] == ' ') {
          newVal[newVal.length - 1] = '_';
        }
        if (val != newVal) {
          return;
        }
        if (res) {
          cur.sContent.innerHTML = res;
        }
        if (preload) {
          cur.sPreload.innerHTML = preload;
          cur.hasMore = true;
        } else {
          cur.hasMore = false;
        }
        Apps.applyOptions(options);
        if (cur.searchCount) {
          cur.summary.innerHTML = langNumeric(cur.searchCount, cur.summaryLang['apps_X_apps_found'], true);
        } else {
          cur.summary.innerHTML = cur.summaryLang['no_apps'];
          var msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
          cur.sContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
          hide(cur.sShowMore);
        }
        Apps.scrollCheck();
        nav.setLoc(extend(nav.objLoc, {sort: cur.searchSort, type: cur.searchType, q: val}));
      },
      onFail: function() {
        removeClass(cur.searchCont, 'loading');
        hide(cur.progress);
      },
      showProgress: function () {
        cur.isAppsLoading = true;
      },
      hideProgress: function () {
        cur.isAppsLoading = false;
      }
    });
  },
  
  showSettingsRows: function(type) {
    var list = cur.appsList[cur.curList] || [];
    var summaries = [ge('apps_summary'), ge('app_site_summary'), ge('app_desktop_summary'), ge('app_edit_summary')];
    var contents = [ge('app_rows'), ge('app_site_list'), ge('app_desktop_list'), ge('app_edit_list')];
    var more_buttons = [ge('more_link'), ge('site_more_link'), ge('desktop_more_link'), ge('edit_more_link')];
    var results = [ge('app_rows'), ge('app_site_results'), ge('app_desktop_results'), ge('app_edit_results')];
    var wraps = [null, ge('app_site_wrap'), ge('app_desktop_wrap'), ge('app_edit_wrap')];
    if (type === undefined) {
      cur.shownCounters = [0, 0, 0, 0];
      for (var i in contents) {
        if (contents[i]) contents[i].innerHTML = '';
      }
    }
    if (!list || !list.length) {
      summaries[0].innerHTML = cur.summaryLang['no_apps'];
      var msg;
      if (!cur.appsList['all'] || cur.appsList['all'].length <= cur.deletedCount) {
        msg = cur.summaryLang['no_apps_default'];
      } else {
        msg = getLang('apps_no_apps_found').split('{query}').join('<b>'+cur.searchStr.replace(/([<>&#]*)/g, '')+'</b>');
      }
      show(results[0]);
      cur.aContent.innerHTML = '<div id="no_apps" class="app_msg">'+msg+'</div>';
      hide(cur.showMore);
      for (var i = 1; i <=3; i++) {
        hide(results[i]);
        hide(more_buttons[i]);
      }
    } else {
      var type_from = (type !== undefined) ? type : 0;
      var type_to = (type !== undefined) ? type : 3;
      for (var i = type_to; i >= type_from; i--) {
        var start = cur.shownCounters[i];
        var end = start + cur.settingsPerPage;
        var apps = (i < 3) ? this.filterByAppType(list, i) : this.filterByAppAdmin(list);
        cur.totalCounters[i] = apps.length;
        apps = apps.slice(start, end);
        show(wraps[i]);
        if (!apps.length) {
          if (contents[i]) contents[i].innerHTML = '';
          hide(results[i]);
          hide(more_buttons[i]);
          if (!i) {
            for (var j = 1; j <= 2; j++) {
              if (isVisible(results[j])) {
                summaries[0].innerHTML = summaries[j].innerHTML;
                hide(wraps[j]);
                break;
              }
            }
          }
        } else {
          show(results[i]);
          var html = [];
          for (k in apps) {
            var last = (parseInt(k) + start == cur.totalCounters[i] - 1);
            var app = apps[k].slice();
            if (cur.selection) {
              app[3] = app[3].replace(cur.selection.re, cur.selection.val);
            }
            var edit = (i == 3);
            html.push(Apps.drawApp(app, last, edit));
            cur.shownCounters[i] += 1;
          }
          var au = ce('div', {innerHTML: html.join('')});
          while (au.firstChild) {
            contents[i].appendChild(au.firstChild);
          }
          if (cur.shownCounters[i] >= cur.totalCounters[i]) {
            hide(more_buttons[i]);
          } else {
            show(more_buttons[i]);
          }
          if (i == 3) continue;
          // update summary of block
          var curLang;
          switch (i) {
            case 1:
              curLang = cur.summaryLang['x_sites'];
              break;
            case 2:
              curLang = cur.summaryLang['x_desktops'];
              break;
            case 0:
            default:
              curLang = cur.summaryLang['x_apps'];
              break;
          }
          if (summaries[i]) summaries[i].innerHTML = langNumeric(cur.totalCounters[i], curLang, true);
        }
      }
    }
  },
  
  _animDelX: function(aid, opacity, set_active) {
    var el = ge('delete_row' + aid);
    if (!el) return;
    if (set_active !== undefined) {
      el.active = set_active;
    } else if (el.active) {
      return;
    }
    animate(el, {opacity: opacity}, 200);
  },
  
  rowActive: function(aid, tt) {
    Apps._animDelX(aid, 1, 1);
    if (tt) showTooltip(ge('delete_row' + aid), {text: tt, showdt: 500});
  },
  rowInactive: function(aid) {
    Apps._animDelX(aid, 0.5, 0);
  },
  rowOver: function(aid) {
    Apps._animDelX(aid, 0.5);
  },
  rowOut: function(aid) {
    Apps._animDelX(aid, 0);
  },
  deleteRow: function(aid, hash) {
    slideUp('app' + aid, 200);
    if (tooltips) {
      tooltips.hide(ge('delete_row' + aid))
    }
    ajax.post(Apps.address, {act: 'hide_suggestion', aid: aid, hash: hash}, {onDone: function() {   }});
  },
  deleteNot: function(nid, hash) {
    if (cur.deletingNot) return;
    var prefix = (nid[0] == 'i') ? 'invite' : 'notify';
    if (window.tooltips && ge('delete_row' + nid)) {
      tooltips.hide(ge('delete_row' + nid))
    }
    cur.deletingNot = true;
    ajax.post(Apps.address, {act: 'delete_notif', nid: nid, hash: hash}, {
      onDone: function(response) {
        if (prefix == 'invite') {
          ge('app_buttons_'+nid).innerHTML = response;
        } else if (prefix == 'notify') {
          var cont = ge('notify_info'+nid);
          hide('notify_hide'+nid);
          cont.innerHTML = response;
        }
        delete cur.deletingNot;
      },
      onFail: function(response) {
        delete cur.deletingNot;
      }
    });
  },
  deleteAllInvites: function(hash) {
    var box = showFastBox(getLang('apps_delete_all_invites_title'), getLang('apps_notifies_sure_delete_all'), getLang('clear_delete_all_delete'), function(){
      show(cur.progress);
      ajax.post(Apps.address, {act: 'delete_all_invites', hash: hash}, {
        onDone: function() {
          if (!cur.notifyCount) {
            ge('apps_summary').innerHTML = getLang('apps_no_notifications');
            ge('app_rows').innerHTML = '<div id="no_apps" class="app_msg">'+getLang('apps_you_have_no_notifies')+'</div>';
            hide('more_link');
            hide('app_hidden_rows');
            hide('app_notify_rows');
          } else {
            hide('app_rows');
            hide('more_link');
            hide('app_hidden_rows');
            hide('app_notify_wrap');
            ge('apps_summary').innerHTML =  ge('app_notify_summary').innerHTML;
          }
          hide(cur.progress);
          box.hide(200);
        },
        onFail: function() {
          hide(cur.progress);
          box.hide(200);
        }
      });
    }, getLang('clear_delete_all_cancel'));
  },
  denyNotifications: function(nid, aid, hash) {
    if (cur.denyingNot) return;
    cur.denyingNot = true;
    ajax.post(Apps.address, {act: 'deny_notifications', aid: aid, hash: hash}, {
      onDone: function(response) {
        ge('notify_info'+nid).innerHTML = response;
        delete cur.denyingNot;
      },
      onFail: function() {
        delete cur.denyingNot;
      }
    });
  },
  recountAddVotes: function(obj) {
    var add_val = obj.value.replace(/[^0-9]/, '');
    ge('add_votes').innerHTML = langNumeric(add_val, votes_flex);
    if (add_val > 0 && ge('app_pay_withdraw')) {
      ge('app_pay_withdraw').value = 0;
      this.recountWithdrawVotes(ge('app_pay_withdraw'));
    }
  },
  recountWithdrawVotes: function(obj) {
    var withdraw_val = obj.value.replace(/[^0-9]/, '');
    ge('withdraw_votes').innerHTML = langNumeric(withdraw_val, votes_flex);
    if (withdraw_val > 0) {
      ge('app_pay_add').value = 0;
      this.recountAddVotes(ge('app_pay_add'));
    }
  },
  cancelInstall: function() {
    if (_tbLink.loc) {
      nav.go(_tbLink.loc, false, {back: false});  
    } else {
      nav.go('/apps', false);
    }
  },
  approveInstall: function(hash, sett, obj) {
    var url = '/'+nav.objLoc[0]+'?join=1&hash='+hash+'&sett='+sett;
    if (isChecked('apps_notifications_checkbox') && isVisible('apps_notifications_checkbox')) {
      url += '&notify=1';
    }
    if (nav.objLoc['#']) {
      url += '#' + nav.objLoc['#'];
    }
    if (obj) {
      obj.innerHTML = '<img src="/images/upload.gif" />';
    }
    nav.go(url, false);
  },
  deleteApp: function(aid, hash, obj) {
    if (cur.appDeleteBtn) return;
    obj.style.cursor = 'default';
    cur.appDeleteBtn = obj.innerHTML;
    obj.innerHTML = '<img src="/images/upload.gif" />';
    ajax.post('/apps', {act: 'quit', id: aid, hash: (hash || cur.app.options.hash), from: 'app'}, {
      onDone: function(text) {
        nav.go('/apps?m=1', false);
      },
      onFail: function(text) {
        obj.innerHTML = cur.appDeleteBtn;
        obj.style.cursor = 'pointer';
        cur.appDeleteBtn = false;
        var errCont = ge('apps_settings_error');
        errCont.innerHTML = text;
        show(errCont);
        scrollToTop(200);
        return true;
      }
    });
  },
  toggleGroupAddForm: function(val) {
    if (val === undefined) {
      val = !isVisible('apps_add_to_group');
    }
    toggle('apps_add_to_group', val);
    toggle('apps_search', !val);
    if (!val) {
      ge('s_gr_search').value = '';
      cur.aSearch.focus();
    } else {
      cur.aSearch.value = '';
      ge('s_gr_search').focus();
    }
    ge('app_form_toggler').innerHTML = val ? getLang('global_cancel') : getLang('apps_addapp');
  },
  addAppToGroup: function(el, hash) {
    var val = el.value;
    if (!val) return;
    ajax.post(Apps.address, {act: 'find_install_app', gid: cur.gid, link: val, hash: hash}, {
      onDone: function(t, err) {
        var el = ge('apps_message');
        if (err) {
          if (el) el.innerHTML = err;
        } else {
          var obj = eval('('+t+')');
          if (!obj) return;
          var all_list = cur.appsList['all'];
          if (!cur.apps[obj[0]]) {
            if (all_list && all_list.length) {
              obj._order = all_list[0]._order - 1;
              cur.appsList['all'].splice(0,0,obj);
            } else {
              obj._order = 0;
              cur.appsList['all'] = [obj];
            }
            cur.apps[obj[0]] = obj;
            cur.appsIndex.add(obj);
          } else {
            var pos = all_list.indexOf(cur.apps[obj[0]]);
            var tmp = all_list.splice(pos, 1)[0];
            delete tmp.deleted;
            tmp._order = all_list[0]._order - 1;
            all_list.splice(0,0,tmp);
            cur.appsIndex.add(cur.apps[obj[0]]);
          }
          cur.defaultCount++;
          cur.shownApps++;
          if (el) {
            var msg = obj[3];
            if (obj[2]) msg = '<a href="'+obj[2]+'">'+msg+'</a>';
            msg = '<span style="font-weight: normal">'+getLang('apps_added_to_group').split('{app}').join(msg).split('{link}').join('<a onclick="Apps.removeApp('+obj[0]+', \''+obj[5]+'\', true); return false;">').split('{/link}').join('</a>')+'</span>';
            msg = getLang('apps_addedtogroup')+".<br/>"+msg;
            el.innerHTML = msg;
          }
          Apps.toggleGroupAddForm(false);
        }
        animate(el, {backgroundColor: '#F9F6E7'}, 2000); 
        cur.aSearch.value = '';
        cur.justAdded = true;
        Apps.updateList(null, cur.aSearch);
      },
      showProgress: function () {
        lockButton(ge('app_gr_search_submit'));
      },
      hideProgress: function () {
        unlockButton(ge('app_gr_search_submit'));
      } 
    });
  },
  
  reportApp: function(aid, place_id) {
    showBox('al_reports.php', {act:'report_app_box', app_id: aid, place_id: place_id}, {
      stat:['ui_controls.js', 'ui_controls.css']
    });
  }
};

try{stManager.done('apps.js');}catch(e){}
