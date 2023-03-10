USE [tankwars]
GO
DELETE FROM [dbo].[Items]
GO
DELETE FROM [dbo].[BlindBuys]
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] ON 

GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1, N'{"gold":0,"money":1600,"ident":"basic_tier_1","items":[{"tank":3,"weight":100,"upgrades":[]},{"tank":11,"weight":67,"upgrades":[]},{"tank":57,"weight":83,"upgrades":[]}],"mask":7,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2, N'{"gold":0,"money":2400,"ident":"advanced_tier_1","items":[{"tank":4,"weight":100,"upgrades":[]},{"tank":12,"weight":67,"upgrades":[]},{"tank":58,"weight":83,"upgrades":[]}],"mask":7,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (28, N'{"ident":"hidden_1","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":57,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (29, N'{"ident":"hidden_2","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":11,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (30, N'{"ident":"hidden_3","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":1,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1002, N'{"ident":"common_crew1","money":2300,"mask":8,"items":[{"tier":1,"weight":9},{"tier":2,"weight":1}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1003, N'{"ident":"veteran_crew1","gold":190,"mask":8,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1006, N'{"ident":"newbie_common_crew1","money":900,"mask":24,"items":[{"tier":1,"weight":9,"ids":[2,3,4,5]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1007, N'{"ident":"newbie_veteran_crew1","money":0,"mask":24,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}],"gold":190}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1008, N'{"ident":"com.iron5studio.iron5.tank2tier","gold":0,"money":0,"items":[{"tank":23},{"crew":5,"tier":3}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1009, N'{"ident":"tank3tier","gold":1000,"money":0,"items":[{"tank":21}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1011, N'{"gold":1250,"money":0,"ident":"basic_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":53,"upgrades":[]}],"mask":7,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1012, N'{"gold":2350,"money":0,"ident":"basic_tier_3_reinforcement","items":[{"tank":2,"weight":44,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":7,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1013, N'{"gold":4900,"money":0,"ident":"basic_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":40,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":7,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1014, N'{"gold":8750,"money":0,"ident":"basic_tier_5_reinforcement","items":[{"tank":24,"weight":44,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":7,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1015, N'{"gold":14200,"money":0,"ident":"basic_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":71,"weight":50,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":34,"upgrades":[]}],"mask":7,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1016, N'{"gold":22450,"money":0,"ident":"basic_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":40,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":7,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1017, N'{"gold":34250,"money":0,"ident":"basic_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":34,"upgrades":[]}],"mask":7,"tier":8}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1018, N'{"ident":"hidden_4","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":41,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1027, N'{"ident":"hidden_2_tier_tank","tier":2,"money":0,"gold":0,"mask":0,"items":[{"tank":23,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1028, N'{"ident":"hidden_3_tier_tank","tier":3,"money":0,"gold":0,"mask":0,"items":[{"tank":2,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1029, N'{"ident":"hidden_4_tier_tank","tier":4,"money":0,"gold":0,"mask":0,"items":[{"tank":49,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1030, N'{"ident":"hidden_5_tier_tank","tier":5,"money":0,"gold":0,"mask":0,"items":[{"tank":24,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1031, N'{"ident":"hidden_6_tier_tank","tier":6,"money":0,"gold":0,"mask":0,"items":[{"tank":81,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1032, N'{"ident":"hidden_7_tier_tank","tier":7,"money":0,"gold":0,"mask":0,"items":[{"tank":87,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1033, N'{"ident":"hidden_8_tier_tank","tier":8,"money":0,"gold":0,"mask":0,"items":[{"tank":103,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2001, N'{"ident":"event_tier_1_reinforcement","items":[{"tank":3,"weight":100,"upgrades":[]},{"tank":11,"weight":67,"upgrades":[]},{"tank":57,"weight":83,"upgrades":[]}],"mask":6,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2002, N'{"ident":"event_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":17,"upgrades":[]}],"mask":6,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2003, N'{"ident":"event_tier_3_reinforcement","items":[{"tank":2,"weight":15,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":6,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2004, N'{"ident":"event_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":13,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":6,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2005, N'{"ident":"event_tier_5_reinforcement","items":[{"tank":24,"weight":15,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":6,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2006, N'{"ident":"event_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":71,"weight":50,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":11,"upgrades":[]}],"mask":6,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2007, N'{"ident":"event_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":13,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":6,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2008, N'{"ident":"event_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":11,"upgrades":[]}],"mask":6,"tier":8}')
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1, N'{"type":"Resources","tier":"1","name":"moneyPack1","price":"250","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"250,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (2, N'{"type":"Resources","tier":"2","name":"moneyPack2","price":"500","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"500,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (3, N'{"type":"Resources","tier":"3","name":"moneyPack3","price":"1000","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"1000,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (4, N'{"type":"Resources","tier":"4","name":"moneyPack4","price":"2000","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"2000,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (5, N'{"type":"Resources","tier":"5","name":"moneyPack5","price":"5000","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"5000,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (6, N'{"type":"Resources","tier":"1","name":"partsPack1","price":"20","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,25"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (7, N'{"type":"Resources","tier":"2","name":"partsPack2","price":"50","active":"true","money":510,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,50"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (8, N'{"type":"Resources","tier":"3","name":"partsPack3","price":"100","active":"true","money":950,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,100"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (9, N'{"type":"Resources","tier":"4","name":"partsPack4","price":"250","active":"true","money":2190,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,250"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (10, N'{"type":"Resources","tier":"5","name":"partsPack5","price":"500","active":"true","money":4060,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,500"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (11, N'{"type":"Construction","tier":"1","name":"construction1","price":"10","active":"true","param":5}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (12, N'{"type":"Construction","tier":"2","name":"construction2","price":"20","active":"true","param":15}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (13, N'{"type":"Construction","tier":"3","name":"construction3","price":"40","active":"true","param":30}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (14, N'{"type":"Construction","tier":"4","name":"construction4","price":"80","active":"true","param":60}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (15, N'{"type":"Construction","tier":"5","name":"construction5","price":"240","active":"true","param":180}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (16, N'{"type":"Construction","tier":"6","name":"construction6","price":"480","active":"true","param":360}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (17, N'{"type":"Construction","tier":"7","name":"construction7","price":"1000","active":"true","param":720}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (18, N'{"type":"Construction","tier":"8","name":"construction8","price":"5000","active":"true","param":600000}', 5)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (19, N'{"type":"Resources","tier":"1","name":"moneyPackMini","price":"100","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"100,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (20, N'{"type":"Resources","tier":"1","name":"partsPackMini","price":"10","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,10"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (21, N'{"type":"EvolvePart","tier":"1","name":"cmp_engine_schema","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (22, N'{"type":"EvolvePart","tier":"1","name":"cmp_gun_schema","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (23, N'{"type":"EvolvePart","tier":"1","name":"cmp_armor_plate","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (24, N'{"type":"EvolvePart","tier":"1","name":"cmp_electroparts","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (25, N'{"type":"EvolvePart","tier":"2","name":"cmp_radioparts","param":5,"price":60}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (26, N'{"type":"EvolvePart","tier":"2","name":"cmp_turret_schema","param":5,"price":60}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (27, N'{"type":"EvolvePart","tier":"2","name":"cmp_aiming_parts","param":5,"price":60}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (28, N'{"type":"EvolvePart","tier":"3","name":"cmp_hull_schema","param":25,"price":300}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (31, N'{"type":"OrderItem","tier":1,"name":"event_tier_1_reinforcement","money":500,"price":500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_1_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (32, N'{"type":"OrderItem","tier":1,"name":"event_tier_2_reinforcement","money":1000,"price":1000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_2_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (33, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":1500,"price":1500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (34, N'{"type":"OrderItem","tier":1,"name":"event_tier_4_reinforcement","money":2000,"price":2000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_4_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (35, N'{"type":"OrderItem","tier":1,"name":"event_tier_5_reinforcement","money":2500,"price":2500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_5_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (36, N'{"type":"OrderItem","tier":1,"name":"event_tier_6_reinforcement","money":3000,"price":3000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_6_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (37, N'{"type":"OrderItem","tier":1,"name":"event_tier_7_reinforcement","money":3500,"price":3500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_7_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (38, N'{"type":"OrderItem","tier":1,"name":"event_tier_8_reinforcement","money":4000,"price":4000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_8_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (41, N'{"type":"ResurrectTank","name":"resurrectItem",param:5,"gold":0,"amount":1,"price":300,"money":300,"tier":1}', 7)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (51, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (52, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (53, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (54, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (55, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (56, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (57, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (58, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (59, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (60, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (61, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (62, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (63, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (64, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (65, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (66, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (67, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (68, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (69, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (70, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (71, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (72, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (73, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (74, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (75, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (76, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (77, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (78, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (100, N'{"type":"ShopItem",param:21,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (101, N'{"type":"ShopItem",param:21,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (102, N'{"type":"ShopItem",param:21,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (103, N'{"type":"ShopItem",param:21,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (104, N'{"type":"ShopItem",param:21,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (105, N'{"type":"ShopItem",param:21,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (106, N'{"type":"ShopItem",param:21,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (107, N'{"type":"ShopItem",param:21,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (108, N'{"type":"ShopItem",param:21,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (109, N'{"type":"ShopItem",param:21,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (110, N'{"type":"ShopItem",param:21,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (111, N'{"type":"ShopItem",param:21,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (112, N'{"type":"ShopItem",param:22,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (113, N'{"type":"ShopItem",param:22,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (114, N'{"type":"ShopItem",param:22,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (115, N'{"type":"ShopItem",param:22,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (116, N'{"type":"ShopItem",param:22,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (117, N'{"type":"ShopItem",param:22,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (118, N'{"type":"ShopItem",param:22,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (119, N'{"type":"ShopItem",param:22,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (120, N'{"type":"ShopItem",param:22,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (121, N'{"type":"ShopItem",param:22,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (122, N'{"type":"ShopItem",param:22,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (123, N'{"type":"ShopItem",param:22,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (124, N'{"type":"ShopItem",param:23,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (125, N'{"type":"ShopItem",param:23,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (126, N'{"type":"ShopItem",param:23,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (127, N'{"type":"ShopItem",param:23,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (128, N'{"type":"ShopItem",param:23,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (129, N'{"type":"ShopItem",param:23,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (130, N'{"type":"ShopItem",param:23,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (131, N'{"type":"ShopItem",param:23,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (132, N'{"type":"ShopItem",param:23,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (133, N'{"type":"ShopItem",param:23,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (134, N'{"type":"ShopItem",param:23,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (135, N'{"type":"ShopItem",param:23,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (136, N'{"type":"ShopItem",param:24,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (137, N'{"type":"ShopItem",param:24,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (138, N'{"type":"ShopItem",param:24,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (139, N'{"type":"ShopItem",param:24,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (140, N'{"type":"ShopItem",param:24,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (141, N'{"type":"ShopItem",param:24,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (142, N'{"type":"ShopItem",param:24,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (143, N'{"type":"ShopItem",param:24,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (144, N'{"type":"ShopItem",param:24,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (145, N'{"type":"ShopItem",param:24,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (146, N'{"type":"ShopItem",param:24,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (147, N'{"type":"ShopItem",param:24,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (148, N'{"type":"ShopItem",param:25,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (149, N'{"type":"ShopItem",param:25,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (150, N'{"type":"ShopItem",param:25,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (151, N'{"type":"ShopItem",param:25,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (152, N'{"type":"ShopItem",param:25,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (153, N'{"type":"ShopItem",param:25,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (154, N'{"type":"ShopItem",param:25,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (155, N'{"type":"ShopItem",param:25,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (156, N'{"type":"ShopItem",param:25,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (157, N'{"type":"ShopItem",param:25,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (158, N'{"type":"ShopItem",param:25,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (159, N'{"type":"ShopItem",param:25,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (160, N'{"type":"ShopItem",param:26,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (161, N'{"type":"ShopItem",param:26,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (162, N'{"type":"ShopItem",param:26,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (163, N'{"type":"ShopItem",param:26,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (164, N'{"type":"ShopItem",param:26,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (165, N'{"type":"ShopItem",param:26,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (166, N'{"type":"ShopItem",param:26,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (167, N'{"type":"ShopItem",param:26,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (168, N'{"type":"ShopItem",param:26,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (169, N'{"type":"ShopItem",param:26,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (170, N'{"type":"ShopItem",param:26,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (171, N'{"type":"ShopItem",param:26,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (172, N'{"type":"ShopItem",param:27,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (173, N'{"type":"ShopItem",param:27,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (174, N'{"type":"ShopItem",param:27,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (175, N'{"type":"ShopItem",param:27,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (176, N'{"type":"ShopItem",param:27,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (177, N'{"type":"ShopItem",param:27,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (178, N'{"type":"ShopItem",param:27,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (179, N'{"type":"ShopItem",param:27,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (180, N'{"type":"ShopItem",param:27,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (181, N'{"type":"ShopItem",param:27,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (182, N'{"type":"ShopItem",param:27,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (183, N'{"type":"ShopItem",param:27,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (184, N'{"type":"ShopItem",param:28,"money":1845,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (185, N'{"type":"ShopItem",param:28,"gold":129,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (186, N'{"type":"ShopItem",param:28,"money":3690,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (187, N'{"type":"ShopItem",param:28,"gold":258,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (188, N'{"type":"ShopItem",param:28,"money":9200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (189, N'{"type":"ShopItem",param:28,"gold":644,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (190, N'{"type":"ShopItem",param:28,"money":18390,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (191, N'{"type":"ShopItem",param:28,"gold":1287,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (192, N'{"type":"ShopItem",param:28,"money":59765,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (193, N'{"type":"ShopItem",param:28,"gold":3218,"amount":25}', 6)
GO
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
