var vk = {
  al: parseInt('3') || 4,
  intnat: '' ? true : false,
  host: 'vkontakte.ru',
  lang: 0,
  rtl: parseInt('') || 0,
  version: 2699,
  zero: false,
  navPrefix: '!'
}
 
window.locDomain = 'vkontakte.ru'; //vk.host.match(/[a-zA-Z]+\.[a-zA-Z]+\.?$/)[0];
var _ua = navigator.userAgent.toLowerCase();
//if (/opera/i.test(_ua) || !/msie 6/i.test(_ua) || document.domain != locDomain) document.domain = locDomain;
var ___htest = (location.toString().match(/#(.*)/) || {})[1] || '';
if (vk.al != 1 && ___htest.length && ___htest.substr(0, 1) == vk.navPrefix) {
  if (vk.al != 3 || vk.navPrefix != '!') {
    //location.replace(location.protocol + '//' + location.host + '/' + ___htest.replace(/^(\/|!)/, ''));
  }
}
 
var StaticFiles = {
  'common.js' : {v: 300},
  'common.css': {v: 127},
  'ie6.css'   : {v: 19},
  'ie7.css'   : {v: 13}
  ,'lang0_0.js':{v:3237},'apps.js':{v:60},'apps.css':{v:45}
}



function showGame(new_style, src)
{
    domStarted();
    domReady();

//alert(httphost);
if ( new_style ) {
    var options = {
        "aid":2924782,
        "type":3,
        "src": src, //"http:\/\/cs407121.vk.me\/u16548738\/c66376668331bd.zip",
        "heightSync":0,
        "domain":"thronewars",
        "width":"827",
        "height":"999",
        "hash":"2e215ad50c66cf8099",
        "icon":"http:\/\/cs419919.vk.me\/u16548738\/15ad6dex.gif",
        "wmode":"direct"
    };
}
else {
    var options = {
    	"aid":2164459,
    	"type":2,
    
    	"src":"http:\/\/"+httphost+"\/swf\/api_wrapper2_0.swf",
    	"heightSync":0,
    	"domain":"rules_of_war",
    	"width":"760",
    	"height":"910",
    	"hash":"217fbc96d44fc6b05d",
    	"icon":"http:\/\/cs10480.vkontakte.ru\/u7878692\/e840cf8x.gif"
    	};
}    
    
params.hash = '' || nav.objLoc['#'];
cur.app = new vkApp('flash_player_container', options, params, function() {
  addClass(ge('flash_player_container'), 'loaded');
});
}