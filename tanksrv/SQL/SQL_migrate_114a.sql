USE [tankwars]
GO
DELETE FROM [dbo].[Skills]
GO
DELETE FROM [dbo].[Items]
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (31, N'{"type":"OrderItem","tier":1,"name":"event_tier_1_reinforcement","money":500,"price":500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':3}]},{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':11}]},{''weight'':4,''bonus'':[{''type'':8,''num'':1,''item'':57}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (32, N'{"type":"OrderItem","tier":2,"name":"event_tier_2_reinforcement","money":1000,"price":1000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':5}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':9}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':13}]},{''weight'':53,''bonus'':[{''type'':8,''num'':1,''item'':23}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (33, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":3000,"price":3000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':44,''bonus'':[{''type'':8,''num'':1,''item'':2}]},{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':17}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':19}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':25}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':27}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':33}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (34, N'{"type":"OrderItem","tier":1,"name":"event_tier_4_reinforcement","money":4000,"price":4000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':29}]},{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':37}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':42}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':45}]},{''weight'':40,''bonus'':[{''type'':8,''num'':1,''item'':49}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':75}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (35, N'{"type":"OrderItem","tier":1,"name":"event_tier_5_reinforcement","money":5000,"price":5000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':15,''bonus'':[{''type'':8,''num'':1,''item'':24}]},{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':39}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':47}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':51}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':55}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':63}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (36, N'{"type":"OrderItem","tier":1,"name":"event_tier_6_reinforcement","money":6000,"price":6000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':59}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':65}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':67}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':71}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':77}]},{''weight'':43,''bonus'':[{''type'':8,''num'':1,''item'':79}]},{''weight'':11,''bonus'':[{''type'':8,''num'':1,''item'':81}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (37, N'{"type":"OrderItem","tier":1,"name":"event_tier_7_reinforcement","money":7000,"price":7000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':61}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':69}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':73}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':82}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':85}]},{''weight'':43,''bonus'':[{''type'':8,''num'':1,''item'':88}]},{''weight'':13,''bonus'':[{''type'':8,''num'':1,''item'':88}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (38, N'{"type":"OrderItem","tier":1,"name":"event_tier_8_reinforcement","money":7000,"price":7000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':61}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':69}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':73}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':82}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':85}]},{''weight'':43,''bonus'':[{''type'':8,''num'':1,''item'':88}]},{''weight'':13,''bonus'':[{''type'':8,''num'':1,''item'':88}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (41, N'{"type":"ResurrectTank","name":"resurrectItem",param:5,"gold":0,"amount":1,"price":300,"money":300,"tier":1}', 7)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (42, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_1_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':200},{''type'':2,''num'':1,''item'':1}],''premiumBonus'':[{''type'':8,''num'':1,''item'':200},{''type'':2,''num'':1,''item'':1}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (43, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_2_reinforcement","money": 0,
"price": 0,"OnUse": [
{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':205},{''type'':2,''num'':1,''item'':43}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (44, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_3_reinforcement","money": 0,
"price": 0,"OnUse": [
{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':206},{''type'':2,''num'':1,''item'':2}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (45, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_4_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':204},{''type'':2,''num'':1,''item'':43}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (51, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (52, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (53, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (54, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (55, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest3","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (56, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest3","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (57, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest4","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (58, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest4","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (59, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest5","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (60, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest5","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (61, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest6","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (62, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest6","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (63, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (64, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (65, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (66, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (67, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (68, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (69, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (70, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (71, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':31}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (72, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':31}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (73, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest3","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':32}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (74, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest4","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':33}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (75, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest5","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':34}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (76, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest6","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':35}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (77, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':36}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (78, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':37}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (79, N'{"type":"Book","tier":"1","name":"book_common","param":1,"price":10}', 10)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (80, N'{"type":"Book","tier":"2","name":"book_rare","param":1,"price":75}', 10)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (81, N'{"type":"Book","tier":"3","name":"book_elite","param":1,"price":350}', 10)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (100, N'{"type":"ShopItem",param:21,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (101, N'{"type":"ShopItem",param:21,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (102, N'{"type":"ShopItem",param:21,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (103, N'{"type":"ShopItem",param:21,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (104, N'{"type":"ShopItem",param:21,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (105, N'{"type":"ShopItem",param:21,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (106, N'{"type":"ShopItem",param:21,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (107, N'{"type":"ShopItem",param:21,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (108, N'{"type":"ShopItem",param:21,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (109, N'{"type":"ShopItem",param:21,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (110, N'{"type":"ShopItem",param:21,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (111, N'{"type":"ShopItem",param:21,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (112, N'{"type":"ShopItem",param:22,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (113, N'{"type":"ShopItem",param:22,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (114, N'{"type":"ShopItem",param:22,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (115, N'{"type":"ShopItem",param:22,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (116, N'{"type":"ShopItem",param:22,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (117, N'{"type":"ShopItem",param:22,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (118, N'{"type":"ShopItem",param:22,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (119, N'{"type":"ShopItem",param:22,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (120, N'{"type":"ShopItem",param:22,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (121, N'{"type":"ShopItem",param:22,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (122, N'{"type":"ShopItem",param:22,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (123, N'{"type":"ShopItem",param:22,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (124, N'{"type":"ShopItem",param:23,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (125, N'{"type":"ShopItem",param:23,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (126, N'{"type":"ShopItem",param:23,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (127, N'{"type":"ShopItem",param:23,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (128, N'{"type":"ShopItem",param:23,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (129, N'{"type":"ShopItem",param:23,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (130, N'{"type":"ShopItem",param:23,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (131, N'{"type":"ShopItem",param:23,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (132, N'{"type":"ShopItem",param:23,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (133, N'{"type":"ShopItem",param:23,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (134, N'{"type":"ShopItem",param:23,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (135, N'{"type":"ShopItem",param:23,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (136, N'{"type":"ShopItem",param:24,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (137, N'{"type":"ShopItem",param:24,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (138, N'{"type":"ShopItem",param:24,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (139, N'{"type":"ShopItem",param:24,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (140, N'{"type":"ShopItem",param:24,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (141, N'{"type":"ShopItem",param:24,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (142, N'{"type":"ShopItem",param:24,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (143, N'{"type":"ShopItem",param:24,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (144, N'{"type":"ShopItem",param:24,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (145, N'{"type":"ShopItem",param:24,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (146, N'{"type":"ShopItem",param:24,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (147, N'{"type":"ShopItem",param:24,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (148, N'{"type":"ShopItem",param:25,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (149, N'{"type":"ShopItem",param:25,"gold":13,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (150, N'{"type":"ShopItem",param:25,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (151, N'{"type":"ShopItem",param:25,"gold":65,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (152, N'{"type":"ShopItem",param:25,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (153, N'{"type":"ShopItem",param:25,"gold":129,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (154, N'{"type":"ShopItem",param:25,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (155, N'{"type":"ShopItem",param:25,"gold":386,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (156, N'{"type":"ShopItem",param:25,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (157, N'{"type":"ShopItem",param:25,"gold":580,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (158, N'{"type":"ShopItem",param:25,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (159, N'{"type":"ShopItem",param:25,"gold":1930,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (160, N'{"type":"ShopItem",param:26,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (161, N'{"type":"ShopItem",param:26,"gold":13,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (162, N'{"type":"ShopItem",param:26,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (163, N'{"type":"ShopItem",param:26,"gold":65,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (164, N'{"type":"ShopItem",param:26,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (165, N'{"type":"ShopItem",param:26,"gold":129,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (166, N'{"type":"ShopItem",param:26,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (167, N'{"type":"ShopItem",param:26,"gold":386,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (168, N'{"type":"ShopItem",param:26,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (169, N'{"type":"ShopItem",param:26,"gold":580,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (170, N'{"type":"ShopItem",param:26,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (171, N'{"type":"ShopItem",param:26,"gold":1930,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (172, N'{"type":"ShopItem",param:27,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (173, N'{"type":"ShopItem",param:27,"gold":13,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (174, N'{"type":"ShopItem",param:27,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (175, N'{"type":"ShopItem",param:27,"gold":65,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (176, N'{"type":"ShopItem",param:27,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (177, N'{"type":"ShopItem",param:27,"gold":129,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (178, N'{"type":"ShopItem",param:27,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (179, N'{"type":"ShopItem",param:27,"gold":386,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (180, N'{"type":"ShopItem",param:27,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (181, N'{"type":"ShopItem",param:27,"gold":580,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (182, N'{"type":"ShopItem",param:27,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (183, N'{"type":"ShopItem",param:27,"gold":1930,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (184, N'{"type":"ShopItem",param:28,"money":1845,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (185, N'{"type":"ShopItem",param:28,"gold":65,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (186, N'{"type":"ShopItem",param:28,"money":3690,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (187, N'{"type":"ShopItem",param:28,"gold":129,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (188, N'{"type":"ShopItem",param:28,"money":9200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (189, N'{"type":"ShopItem",param:28,"gold":322,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (190, N'{"type":"ShopItem",param:28,"money":18390,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (191, N'{"type":"ShopItem",param:28,"gold":643,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (192, N'{"type":"ShopItem",param:28,"money":59765,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (193, N'{"type":"ShopItem",param:28,"gold":1609,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (200, N'{"type":"ShopItem",param:79,"money":600,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (201, N'{"type":"ShopItem",param:79,"money":1200,"amount":20}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (202, N'{"type":"ShopItem",param:79,"money":2800,"amount":50}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (203, N'{"type":"ShopItem",param:80,"money":1500,"amount":3}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (204, N'{"type":"ShopItem",param:80,"gold":130,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (205, N'{"type":"ShopItem",param:81,"money":2500,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (206, N'{"type":"ShopItem",param:81,"gold":70,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (207, N'{"type":"ShopItem",param:81,"gold":165,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (300, N'{"type":"PowerUp","tier":1,"name":"repair_01","customId":1,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (301, N'{"type":"PowerUp","tier":2,"name":"repair_02","customId":2,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (302, N'{"type":"PowerUp","tier":3,"name":"repair_03","customId":3,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (303, N'{"type":"PowerUp","tier":4,"name":"repair_04","customId":4,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (304, N'{"type":"PowerUp","tier":1,"name":"massrepair_01","customId":5,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (305, N'{"type":"PowerUp","tier":2,"name":"massrepair_02","customId":6,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (306, N'{"type":"PowerUp","tier":3,"name":"massrepair_03","customId":7,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (307, N'{"type":"PowerUp","tier":4,"name":"massrepair_04","customId":8,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (308, N'{"type":"PowerUp","tier":1,"name":"pierceammo_01","customId":9,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (309, N'{"type":"PowerUp","tier":2,"name":"pierceammo_02","customId":10,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (310, N'{"type":"PowerUp","tier":3,"name":"pierceammo_05","customId":11,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (311, N'{"type":"PowerUp","tier":4,"name":"pierceammo_06","customId":12,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (312, N'{"type":"PowerUp","tier":1,"name":"recon_01","customId":13,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (313, N'{"type":"PowerUp","tier":2,"name":"recon_02","customId":14,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (314, N'{"type":"PowerUp","tier":3,"name":"recon_03","customId":15,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (315, N'{"type":"PowerUp","tier":4,"name":"recon_04","customId":23,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (316, N'{"type":"PowerUp","tier":1,"name":"airstrike_01","customId":16,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (317, N'{"type":"PowerUp","tier":2,"name":"airstrike_02","customId":17,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (318, N'{"type":"PowerUp","tier":3,"name":"airstrike_03","customId":18,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (319, N'{"type":"PowerUp","tier":4,"name":"airstrike_04","customId":24,"price":5000}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (320, N'{"type":"PowerUp","tier":1,"name":"superration_01","customId":19,"price":200}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (321, N'{"type":"PowerUp","tier":2,"name":"superration_02","customId":20,"price":500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (322, N'{"type":"PowerUp","tier":3,"name":"superration_03","customId":21,"price":1500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (323, N'{"type":"PowerUp","tier":4,"name":"superration_04","customId":22,"price":4000}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (324, N'{"type":"PowerUp","tier":1,"name":"artilerystrike_01","customId":25,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (325, N'{"type":"PowerUp","tier":2,"name":"artilerystrike_02","customId":26,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (326, N'{"type":"PowerUp","tier":3,"name":"artilerystrike_03","customId":27,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (327, N'{"type":"PowerUp","tier":4,"name":"artilerystrike_04","customId":31,"price":5000}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (328, N'{"type":"PowerUp","tier":1,"name":"speed_01","customId":28,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (329, N'{"type":"PowerUp","tier":2,"name":"speed_02","customId":29,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (330, N'{"type":"PowerUp","tier":3,"name":"speed_03","customId":30,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (331, N'{"type":"PowerUp","tier":4,"name":"speed_04","customId":32,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (332, N'{"type":"PowerUp","tier":1,"name":"repair_01p","customId":38,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (333, N'{"type":"PowerUp","tier":2,"name":"repair_02p","customId":39,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (334, N'{"type":"PowerUp","tier":3,"name":"repair_03p","customId":40,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (335, N'{"type":"PowerUp","tier":4,"name":"repair_04p","customId":41,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (336, N'{"type":"PowerUp","tier":1,"name":"massrepair_01p","customId":42,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (337, N'{"type":"PowerUp","tier":2,"name":"massrepair_02p","customId":43,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (338, N'{"type":"PowerUp","tier":3,"name":"massrepair_03p","customId":44,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (339, N'{"type":"PowerUp","tier":4,"name":"massrepair_04p","customId":45,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (340, N'{"type":"PowerUp","tier":1,"name":"pierceammo_01p","customId":46,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (341, N'{"type":"PowerUp","tier":2,"name":"pierceammo_02p","customId":47,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (342, N'{"type":"PowerUp","tier":3,"name":"pierceammo_05p","customId":48,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (343, N'{"type":"PowerUp","tier":4,"name":"pierceammo_06p","customId":49,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (344, N'{"type":"PowerUp","tier":1,"name":"recon_01p","customId":50,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (345, N'{"type":"PowerUp","tier":2,"name":"recon_02p","customId":51,"price":4}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (346, N'{"type":"PowerUp","tier":3,"name":"recon_03p","customId":52,"price":8}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (347, N'{"type":"PowerUp","tier":4,"name":"recon_04p","customId":53,"price":16}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (348, N'{"type":"PowerUp","tier":1,"name":"airstrike_01p","customId":54,"price":5}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (349, N'{"type":"PowerUp","tier":2,"name":"airstrike_02p","customId":55,"price":15}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (350, N'{"type":"PowerUp","tier":3,"name":"airstrike_03p","customId":56,"price":45}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (351, N'{"type":"PowerUp","tier":4,"name":"airstrike_04p","customId":57,"price":135}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (352, N'{"type":"PowerUp","tier":1,"name":"superration_01","customId":58,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (353, N'{"type":"PowerUp","tier":2,"name":"superration_02","customId":59,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (354, N'{"type":"PowerUp","tier":3,"name":"superration_03","customId":60,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (355, N'{"type":"PowerUp","tier":4,"name":"superration_04","customId":61,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (356, N'{"type":"PowerUp","tier":1,"name":"artilerystrike_01p","customId":62,"price":4}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (357, N'{"type":"PowerUp","tier":2,"name":"artilerystrike_02p","customId":63,"price":12}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (358, N'{"type":"PowerUp","tier":3,"name":"artilerystrike_03p","customId":64,"price":36}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (359, N'{"type":"PowerUp","tier":4,"name":"artilerystrike_04p","customId":65,"price":108}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (360, N'{"type":"PowerUp","tier":1,"name":"speed_01p","customId":66,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (361, N'{"type":"PowerUp","tier":2,"name":"speed_02p","customId":67,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (362, N'{"type":"PowerUp","tier":3,"name":"speed_03p","customId":68,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (363, N'{"type":"PowerUp","tier":4,"name":"speed_04p","customId":69,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (400, N'{"type":"ShopItem",param:300,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (401, N'{"type":"ShopItem",param:301,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (402, N'{"type":"ShopItem",param:302,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (403, N'{"type":"ShopItem",param:303,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (404, N'{"type":"ShopItem",param:304,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (405, N'{"type":"ShopItem",param:305,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (406, N'{"type":"ShopItem",param:306,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (407, N'{"type":"ShopItem",param:307,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (408, N'{"type":"ShopItem",param:308,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (409, N'{"type":"ShopItem",param:309,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (410, N'{"type":"ShopItem",param:310,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (411, N'{"type":"ShopItem",param:311,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (412, N'{"type":"ShopItem",param:312,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (413, N'{"type":"ShopItem",param:313,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (414, N'{"type":"ShopItem",param:314,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (415, N'{"type":"ShopItem",param:315,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (416, N'{"type":"ShopItem",param:316,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (417, N'{"type":"ShopItem",param:317,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (418, N'{"type":"ShopItem",param:318,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (419, N'{"type":"ShopItem",param:319,"money":25000,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (420, N'{"type":"ShopItem",param:324,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (421, N'{"type":"ShopItem",param:325,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (422, N'{"type":"ShopItem",param:326,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (423, N'{"type":"ShopItem",param:327,"money":25000,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (424, N'{"type":"ShopItem",param:328,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (425, N'{"type":"ShopItem",param:329,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (426, N'{"type":"ShopItem",param:330,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (427, N'{"type":"ShopItem",param:331,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (428, N'{"type":"ShopItem",param:332,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (429, N'{"type":"ShopItem",param:333,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (430, N'{"type":"ShopItem",param:334,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (431, N'{"type":"ShopItem",param:335,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (432, N'{"type":"ShopItem",param:336,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (433, N'{"type":"ShopItem",param:337,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (434, N'{"type":"ShopItem",param:338,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (435, N'{"type":"ShopItem",param:339,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (436, N'{"type":"ShopItem",param:340,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (437, N'{"type":"ShopItem",param:341,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (438, N'{"type":"ShopItem",param:342,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (439, N'{"type":"ShopItem",param:343,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (440, N'{"type":"ShopItem",param:344,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (441, N'{"type":"ShopItem",param:345,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (442, N'{"type":"ShopItem",param:346,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (443, N'{"type":"ShopItem",param:347,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (444, N'{"type":"ShopItem",param:348,"gold":20,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (445, N'{"type":"ShopItem",param:349,"gold":40,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (446, N'{"type":"ShopItem",param:350,"gold":80,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (447, N'{"type":"ShopItem",param:351,"gold":160,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (448, N'{"type":"ShopItem",param:356,"gold":20,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (449, N'{"type":"ShopItem",param:357,"gold":40,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (450, N'{"type":"ShopItem",param:358,"gold":80,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (451, N'{"type":"ShopItem",param:359,"gold":160,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (452, N'{"type":"ShopItem",param:360,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (453, N'{"type":"ShopItem",param:361,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (454, N'{"type":"ShopItem",param:362,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (455, N'{"type":"ShopItem",param:363,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (456, N'{"type":"ShopItem",param:300,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (457, N'{"type":"ShopItem",param:301,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (458, N'{"type":"ShopItem",param:302,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (459, N'{"type":"ShopItem",param:303,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (460, N'{"type":"ShopItem",param:304,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (461, N'{"type":"ShopItem",param:305,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (462, N'{"type":"ShopItem",param:306,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (463, N'{"type":"ShopItem",param:307,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (464, N'{"type":"ShopItem",param:308,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (465, N'{"type":"ShopItem",param:309,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (466, N'{"type":"ShopItem",param:310,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (467, N'{"type":"ShopItem",param:311,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (468, N'{"type":"ShopItem",param:312,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (469, N'{"type":"ShopItem",param:313,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (470, N'{"type":"ShopItem",param:314,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (471, N'{"type":"ShopItem",param:315,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (472, N'{"type":"ShopItem",param:316,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (473, N'{"type":"ShopItem",param:317,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (474, N'{"type":"ShopItem",param:318,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (475, N'{"type":"ShopItem",param:319,"money":10000,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (476, N'{"type":"ShopItem",param:324,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (477, N'{"type":"ShopItem",param:325,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (478, N'{"type":"ShopItem",param:326,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (479, N'{"type":"ShopItem",param:327,"money":10000,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (480, N'{"type":"ShopItem",param:328,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (481, N'{"type":"ShopItem",param:329,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (482, N'{"type":"ShopItem",param:330,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (483, N'{"type":"ShopItem",param:331,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (484, N'{"type":"ShopItem",param:332,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (485, N'{"type":"ShopItem",param:333,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (486, N'{"type":"ShopItem",param:334,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (487, N'{"type":"ShopItem",param:335,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (488, N'{"type":"ShopItem",param:336,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (489, N'{"type":"ShopItem",param:337,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (490, N'{"type":"ShopItem",param:338,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (491, N'{"type":"ShopItem",param:339,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (492, N'{"type":"ShopItem",param:340,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (493, N'{"type":"ShopItem",param:341,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (494, N'{"type":"ShopItem",param:342,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (495, N'{"type":"ShopItem",param:343,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (496, N'{"type":"ShopItem",param:344,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (497, N'{"type":"ShopItem",param:345,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (498, N'{"type":"ShopItem",param:346,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (499, N'{"type":"ShopItem",param:347,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (500, N'{"type":"ShopItem",param:348,"gold":8,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (501, N'{"type":"ShopItem",param:349,"gold":16,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (502, N'{"type":"ShopItem",param:350,"gold":32,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (503, N'{"type":"ShopItem",param:351,"gold":64,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (504, N'{"type":"ShopItem",param:356,"gold":8,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (505, N'{"type":"ShopItem",param:357,"gold":16,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (506, N'{"type":"ShopItem",param:358,"gold":32,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (507, N'{"type":"ShopItem",param:359,"gold":64,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (508, N'{"type":"ShopItem",param:360,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (509, N'{"type":"ShopItem",param:361,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (510, N'{"type":"ShopItem",param:362,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (511, N'{"type":"ShopItem",param:363,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (512, N'{"type":"ShopItem",param:7,"money":600,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (513, N'{"type":"ShopItem",param:8,"money":1000,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (514, N'{"type":"ShopItem",param:9,"money":2200,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (515, N'{"type":"ShopItem",param:10,"money":4100,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (600, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_01","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':300,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':360,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':25,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':4,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':4,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (601, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_02","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':540,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':648,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':45,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':6,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':6,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (602, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_03","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':720,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':865,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':60,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':9,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (603, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_04","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':990,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1190,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':83,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':15,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (604, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_05","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':1200,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1450,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':100,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':4,''item'':25}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (605, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_06","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':1800,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2160,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':150,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (606, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_07","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':2250,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2700,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':187,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (607, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_08","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':45,''bonus'':[{''type'':0,''num'':3600,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':275,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (608, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_09","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':45,''bonus'':[{''type'':0,''num'':4600,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':350,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':5,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (609, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_10","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':45,''bonus'':[{''type'':0,''num'':6000,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':450,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (650, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_01","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':40,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':50,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':60,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':8,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':10,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':12,''item'':0}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (651, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_02","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':64,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':80,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':96,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':12,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':16,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':19,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':2,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':2,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':2,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (652, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_03","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':88,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':110,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':132,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':17,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':22,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':26,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':3,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':3,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':3,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (653, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_04","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':120,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':150,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':180,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':24,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':30,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':35,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':4,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':4,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':4,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (654, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_05","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':160,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':200,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':240,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':32,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':40,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':47,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':10,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':10,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':10,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (655, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_06","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':200,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':250,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':300,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':40,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':50,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':59,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':15,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':15,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':15,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (656, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_07","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':248,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':310,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':372,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':50,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':62,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':73,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':20,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':20,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':20,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (657, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_08","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':280,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':350,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':420,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':56,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':70,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':82,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':25,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':25,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':25,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (658, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_09","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':320,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':400,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':480,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':64,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':80,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':94,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':35,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':35,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':35,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (659, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_10","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':380,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':475,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':570,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':76,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':95,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':111,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':50,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':50,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':50,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (700, N'{"type":"Chest","price":250,"money":250,"tier":"1","name":"silverChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':30,''item'':21},{''type'':7,''num'':30,''item'':22},{''type'':7,''num'':20,''item'':79}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':79},{''type'':7,''num'':5,''item'':80},{''type'':7,''num'':2,''item'':305}]},{''weight'':25,''bonus'':[{''type'':7,''num'':35,''item'':21},{''type'':7,''num'':35,''item'':22},{''type'':7,''num'':35,''item'':23}]},{''weight'':25,''bonus'':[{''type'':7,''num'':40,''item'':21},{''type'':7,''num'':10,''item'':79},{''type'':7,''num'':2,''item'':80}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (702, N'{"type":"Chest","price":400,"money":400,"tier":"2","name":"goldChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':100,''item'':21},{''type'':7,''num'':100,''item'':22},{''type'':7,''num'':50,''item'':79}]},{''weight'':25,''bonus'':[{''type'':7,''num'':40,''item'':79},{''type'':7,''num'':8,''item'':80},{''type'':7,''num'':3,''item'':306}]},{''weight'':25,''bonus'':[{''type'':7,''num'':100,''item'':21},{''type'':7,''num'':100,''item'':22},{''type'':7,''num'':100,''item'':23}]},{''weight'':25,''bonus'':[{''type'':7,''num'':40,''item'':79},{''type'':7,''num'':5,''item'':80},{''type'':7,''num'':3,''item'':337}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (704, N'{"type":"Chest","price":650,"money":650,"tier":"3","name":"goldChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':5,''item'':25},{''type'':7,''num'':5,''item'':26},{''type'':7,''num'':5,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':7,''item'':25},{''type'':7,''num'':7,''item'':26},{''type'':7,''num'':7,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':1,''item'':28}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':3,''item'':81},{''type'':7,''num'':3,''item'':341}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (706, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':81},{''type'':7,''num'':6,''item'':28},{''type'':7,''num'':3,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':5,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':12,''item'':28},{''type'':7,''num'':20,''item'':80},{''type'':7,''num'':3,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':81},{''type'':7,''num'':25,''item'':80},{''type'':7,''num'':3,''item'':342}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1000, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1001, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':5,''item'':28},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':8,''item'':28},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1002, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':11}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':12}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':41}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':56}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1003, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':57}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':58}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1004, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':61}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':61}]}]"}]}', 8)
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (1, 1, N'more_hp_pts', N'more_hp_pts', 0, 1, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (2, 1, N'more_hp_pts', N'more_hp_pts', 0, 2, 6, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (3, 1, N'more_hp_pts', N'more_hp_pts', 0, 3, 6, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (4, 1, N'more_hp_pts', N'more_hp_pts', 0, 4, 6, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (5, 1, N'more_hp_pts', N'more_hp_pts', 0, 5, 6, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (6, 1, N'more_hp_pts', N'more_hp_pts', 0, 6, 6, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (7, 1, N'more_hp_pts', N'more_hp_pts', 0, 7, 6, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (8, 1, N'more_hp_pts', N'more_hp_pts', 0, 8, 6, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (9, 1, N'more_hp_pts', N'more_hp_pts', 0, 9, 6, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (10, 2, N'more_hp_pct', N'more_hp_pct', 0, 1, 21, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (11, 2, N'more_hp_pct', N'more_hp_pct', 0, 2, 21, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (12, 2, N'more_hp_pct', N'more_hp_pct', 0, 3, 21, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (13, 2, N'more_hp_pct', N'more_hp_pct', 0, 4, 21, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (14, 2, N'more_hp_pct', N'more_hp_pct', 0, 5, 21, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (15, 2, N'more_hp_pct', N'more_hp_pct', 0, 6, 21, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (16, 3, N'armor_all_pts', N'armor_all_pts', 0, 1, 17, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (17, 3, N'armor_all_pts', N'armor_all_pts', 0, 2, 17, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (18, 3, N'armor_all_pts', N'armor_all_pts', 0, 3, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (19, 3, N'armor_all_pts', N'armor_all_pts', 0, 4, 17, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (20, 3, N'armor_all_pts', N'armor_all_pts', 0, 5, 17, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (21, 3, N'armor_all_pts', N'armor_all_pts', 0, 6, 17, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (22, 3, N'armor_all_pts', N'armor_all_pts', 0, 7, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (23, 3, N'armor_all_pts', N'armor_all_pts', 0, 8, 17, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (24, 3, N'armor_all_pts', N'armor_all_pts', 0, 9, 17, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (25, 4, N'armor_all_pct', N'armor_all_pct', 0, 1, 32, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (26, 4, N'armor_all_pct', N'armor_all_pct', 0, 2, 32, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (27, 4, N'armor_all_pct', N'armor_all_pct', 0, 3, 32, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (28, 4, N'armor_all_pct', N'armor_all_pct', 0, 4, 32, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (29, 4, N'armor_all_pct', N'armor_all_pct', 0, 5, 32, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (30, 4, N'armor_all_pct', N'armor_all_pct', 0, 6, 32, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (31, 5, N'damage_pts', N'damage_pts', 0, 1, 16, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (32, 5, N'damage_pts', N'damage_pts', 0, 2, 16, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (33, 5, N'damage_pts', N'damage_pts', 0, 3, 16, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (34, 5, N'damage_pts', N'damage_pts', 0, 4, 16, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (35, 5, N'damage_pts', N'damage_pts', 0, 5, 16, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (36, 5, N'damage_pts', N'damage_pts', 0, 6, 16, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (37, 5, N'damage_pts', N'damage_pts', 0, 7, 16, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (38, 5, N'damage_pts', N'damage_pts', 0, 8, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (39, 5, N'damage_pts', N'damage_pts', 0, 9, 16, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (40, 6, N'damage_pct', N'damage_pct', 0, 1, 31, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (41, 6, N'damage_pct', N'damage_pct', 0, 2, 31, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (42, 6, N'damage_pct', N'damage_pct', 0, 3, 31, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (43, 6, N'damage_pct', N'damage_pct', 0, 4, 31, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (44, 6, N'damage_pct', N'damage_pct', 0, 5, 31, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (45, 6, N'damage_pct', N'damage_pct', 0, 6, 31, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (46, 7, N'piercing_pts', N'piercing_pts', 0, 1, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (47, 7, N'piercing_pts', N'piercing_pts', 0, 2, 15, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (48, 7, N'piercing_pts', N'piercing_pts', 0, 3, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (49, 7, N'piercing_pts', N'piercing_pts', 0, 4, 15, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (50, 7, N'piercing_pts', N'piercing_pts', 0, 5, 15, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (51, 7, N'piercing_pts', N'piercing_pts', 0, 6, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (52, 7, N'piercing_pts', N'piercing_pts', 0, 7, 15, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (53, 7, N'piercing_pts', N'piercing_pts', 0, 8, 15, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (54, 7, N'piercing_pts', N'piercing_pts', 0, 9, 15, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (55, 8, N'piercing_pct', N'piercing_pct', 0, 1, 30, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (56, 8, N'piercing_pct', N'piercing_pct', 0, 2, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (57, 8, N'piercing_pct', N'piercing_pct', 0, 3, 30, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (58, 8, N'piercing_pct', N'piercing_pct', 0, 4, 30, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (59, 8, N'piercing_pct', N'piercing_pct', 0, 5, 30, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (60, 8, N'piercing_pct', N'piercing_pct', 0, 6, 30, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (61, 9, N'visibility_pct', N'visibility_pct', 0, 1, 26, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (62, 9, N'visibility_pct', N'visibility_pct', 0, 2, 26, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (63, 9, N'visibility_pct', N'visibility_pct', 0, 3, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (64, 9, N'visibility_pct', N'visibility_pct', 0, 4, 26, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (65, 9, N'visibility_pct', N'visibility_pct', 0, 5, 26, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (66, 9, N'visibility_pct', N'visibility_pct', 0, 6, 26, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (67, 9, N'visibility_pct', N'visibility_pct', 0, 7, 26, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (68, 9, N'visibility_pct', N'visibility_pct', 0, 8, 26, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (69, 9, N'visibility_pct', N'visibility_pct', 0, 9, 26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (70, 10, N'range_pct', N'range_pct', 0, 1, 27, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (71, 10, N'range_pct', N'range_pct', 0, 2, 27, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (72, 10, N'range_pct', N'range_pct', 0, 3, 27, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (73, 10, N'range_pct', N'range_pct', 0, 4, 27, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (74, 10, N'range_pct', N'range_pct', 0, 5, 27, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (75, 10, N'range_pct', N'range_pct', 0, 6, 27, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (76, 11, N'min_accy_pct', N'min_accy_pct', 0, 1, 24, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (77, 11, N'min_accy_pct', N'min_accy_pct', 0, 2, 24, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (78, 11, N'min_accy_pct', N'min_accy_pct', 0, 3, 24, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (79, 11, N'min_accy_pct', N'min_accy_pct', 0, 4, 24, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (80, 11, N'min_accy_pct', N'min_accy_pct', 0, 5, 24, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (81, 11, N'min_accy_pct', N'min_accy_pct', 0, 6, 24, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (82, 11, N'min_accy_pct', N'min_accy_pct', 0, 7, 24, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (83, 11, N'min_accy_pct', N'min_accy_pct', 0, 8, 24, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (84, 11, N'min_accy_pct', N'min_accy_pct', 0, 9, 24, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (85, 12, N'speed_pct', N'speed_pct', 0, 1, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (86, 12, N'speed_pct', N'speed_pct', 0, 2, 22, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (87, 12, N'speed_pct', N'speed_pct', 0, 3, 22, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (88, 12, N'speed_pct', N'speed_pct', 0, 4, 22, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (89, 12, N'speed_pct', N'speed_pct', 0, 5, 22, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (90, 12, N'speed_pct', N'speed_pct', 0, 6, 22, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (91, 13, N'reload_pct', N'reload_pct', 0, 1, 29, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (92, 13, N'reload_pct', N'reload_pct', 0, 2, 29, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (93, 13, N'reload_pct', N'reload_pct', 0, 3, 29, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (94, 13, N'reload_pct', N'reload_pct', 0, 4, 29, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (95, 13, N'reload_pct', N'reload_pct', 0, 5, 29, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (96, 13, N'reload_pct', N'reload_pct', 0, 6, 29, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (97, 13, N'reload_pct', N'reload_pct', 0, 7, 29, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (98, 13, N'reload_pct', N'reload_pct', 0, 8, 29, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (99, 13, N'reload_pct', N'reload_pct', 0, 9, 29, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (100, 14, N'front_armor_pts', N'front_armor_pts', 0, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (101, 14, N'front_armor_pts', N'front_armor_pts', 0, 2, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (102, 14, N'front_armor_pts', N'front_armor_pts', 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (103, 14, N'front_armor_pts', N'front_armor_pts', 0, 4, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (104, 14, N'front_armor_pts', N'front_armor_pts', 0, 5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (105, 14, N'front_armor_pts', N'front_armor_pts', 0, 6, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (106, 14, N'front_armor_pts', N'front_armor_pts', 0, 7, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (107, 14, N'front_armor_pts', N'front_armor_pts', 0, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (108, 14, N'front_armor_pts', N'front_armor_pts', 0, 9, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (109, 15, N'visible_range_pct', N'visible_range_pct', 0, 1, 26, 4, 27, 3, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (110, 15, N'visible_range_pct', N'visible_range_pct', 0, 2, 26, 5, 27, 5, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (111, 15, N'visible_range_pct', N'visible_range_pct', 0, 3, 26, 6, 27, 7, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (112, 15, N'visible_range_pct', N'visible_range_pct', 0, 4, 26, 7, 27, 9, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (113, 15, N'visible_range_pct', N'visible_range_pct', 0, 5, 26, 8, 27, 11, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (114, 15, N'visible_range_pct', N'visible_range_pct', 0, 6, 26, 9, 27, 13, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (115, 15, N'visible_range_pct', N'visible_range_pct', 0, 7, 26, 10, 27, 15, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (116, 15, N'visible_range_pct', N'visible_range_pct', 0, 8, 26, 11, 27, 17, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (117, 15, N'visible_range_pct', N'visible_range_pct', 0, 9, 26, 12, 27, 19, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (118, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 1, 16, 2, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (119, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 2, 16, 3, 15, 3, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (120, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 3, 16, 4, 15, 4, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (121, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 4, 16, 5, 15, 6, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (122, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 5, 16, 6, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (123, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 6, 16, 8, 15, 10, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (124, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 7, 16, 10, 15, 12, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (125, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 8, 16, 12, 15, 14, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (126, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 9, 16, 14, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (127, 17, N'vehicle_sc', N'c_sc_01', 3, 1, 65, 10, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (128, 17, N'vehicle_sc', N'c_sc_01', 3, 2, 65, 17, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (129, 17, N'vehicle_sc', N'c_sc_01', 3, 3, 65, 25, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (130, 18, N'vehicle_lt', N'c_lt_01', 3, 1, 27, 5, 24, 5, 25, 5, 37, 5, 64, 2, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (131, 18, N'vehicle_lt', N'c_lt_01', 3, 2, 27, 10, 24, 10, 25, 10, 37, 5, 64, 2, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (132, 18, N'vehicle_lt', N'c_lt_01', 3, 3, 27, 15, 24, 15, 25, 15, 37, 5, 64, 2, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (133, 19, N'vehicle_mt', N'c_mt_01', 3, 1, 29, 5, 0, 0, 0, 0, 0, 0, 64, 3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (134, 19, N'vehicle_mt', N'c_mt_01', 3, 2, 29, 10, 0, 0, 0, 0, 0, 0, 64, 3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (135, 19, N'vehicle_mt', N'c_mt_01', 3, 3, 29, 15, 0, 0, 0, 0, 0, 0, 64, 3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (136, 20, N'vehicle_ht', N'c_ht_01', 3, 1, 21, 7, 0, 0, 0, 0, 0, 0, 64, 4, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (137, 20, N'vehicle_ht', N'c_ht_01', 3, 2, 21, 12, 0, 0, 0, 0, 0, 0, 64, 4, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (138, 20, N'vehicle_ht', N'c_ht_01', 3, 3, 21, 17, 0, 0, 0, 0, 0, 0, 64, 4, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (139, 21, N'vehicle_spg', N'c_spg_01', 3, 1, 66, 25, 0, 0, 0, 0, 0, 0, 64, 5, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (140, 21, N'vehicle_spg', N'c_spg_01', 3, 2, 66, 45, 0, 0, 0, 0, 0, 0, 64, 5, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (141, 21, N'vehicle_spg', N'c_spg_01', 3, 3, 66, 80, 0, 0, 0, 0, 0, 0, 64, 5, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (142, 22, N'vehicle_at', N'c_at_01', 3, 1, 24, 10, 25, 12, 0, 0, 0, 0, 64, 6, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (143, 22, N'vehicle_at', N'c_at_01', 3, 2, 24, 15, 25, 17, 0, 0, 0, 0, 64, 6, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (144, 22, N'vehicle_at', N'c_at_01', 3, 3, 24, 20, 25, 25, 0, 0, 0, 0, 64, 6, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (145, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 1, 2, 70, 39, 18, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (146, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 2, 2, 68, 39, 19, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (147, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 3, 2, 66, 39, 20, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (148, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 4, 2, 64, 39, 21, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (149, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 5, 2, 62, 39, 22, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (150, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 6, 2, 60, 39, 23, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (151, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 7, 2, 58, 39, 24, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (152, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 8, 2, 56, 39, 25, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (153, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 9, 2, 54, 39, 27, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (154, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 10, 2, 52, 39, 29, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (155, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 11, 2, 50, 39, 31, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (156, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 12, 2, 48, 39, 33, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (157, 24, N'additional_armor', N'additional_armor', 1, 1, 2, 70, 1, 25, 38, 35, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (158, 24, N'additional_armor', N'additional_armor', 1, 2, 2, 68, 1, 26, 38, 50, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (159, 24, N'additional_armor', N'additional_armor', 1, 3, 2, 66, 1, 27, 38, 70, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (160, 24, N'additional_armor', N'additional_armor', 1, 4, 2, 64, 1, 29, 38, 90, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (161, 24, N'additional_armor', N'additional_armor', 1, 5, 2, 62, 1, 31, 38, 125, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (162, 24, N'additional_armor', N'additional_armor', 1, 6, 2, 60, 1, 33, 38, 150, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (163, 24, N'additional_armor', N'additional_armor', 1, 7, 2, 58, 1, 35, 38, 200, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (164, 24, N'additional_armor', N'additional_armor', 1, 8, 2, 56, 1, 35, 38, 280, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (165, 24, N'additional_armor', N'additional_armor', 1, 9, 2, 54, 1, 35, 38, 380, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (166, 24, N'additional_armor', N'additional_armor', 1, 10, 2, 52, 1, 35, 38, 480, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (167, 24, N'additional_armor', N'additional_armor', 1, 11, 2, 50, 1, 35, 38, 580, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (168, 24, N'additional_armor', N'additional_armor', 1, 12, 2, 48, 1, 35, 38, 650, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (169, 25, N'camouflage', N'camouflage', 1, 1, 2, 65, 1, 30, 34, 30, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (170, 25, N'camouflage', N'camouflage', 1, 2, 2, 65, 1, 31, 34, 32, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (171, 25, N'camouflage', N'camouflage', 1, 3, 2, 65, 1, 32, 34, 34, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (172, 25, N'camouflage', N'camouflage', 1, 4, 2, 60, 1, 33, 34, 36, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (173, 25, N'camouflage', N'camouflage', 1, 5, 2, 60, 1, 34, 34, 38, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (174, 25, N'camouflage', N'camouflage', 1, 6, 2, 60, 1, 36, 34, 40, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (175, 25, N'camouflage', N'camouflage', 1, 7, 2, 55, 1, 38, 34, 42, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (176, 25, N'camouflage', N'camouflage', 1, 8, 2, 55, 1, 40, 34, 44, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (177, 25, N'camouflage', N'camouflage', 1, 9, 2, 52, 1, 42, 34, 46, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (178, 25, N'camouflage', N'camouflage', 1, 10, 2, 52, 1, 44, 34, 48, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (179, 25, N'camouflage', N'camouflage', 1, 11, 2, 52, 1, 45, 34, 50, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (180, 25, N'camouflage', N'camouflage', 1, 12, 2, 52, 1, 45, 34, 52, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (181, 26, N'attack_leader', N'attack_leader', 1, 1, 2, 70, 1, 10, 37, 5, 48, 26, 31, 4, 30, 4)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (182, 26, N'attack_leader', N'attack_leader', 1, 2, 2, 69, 1, 11, 37, 5, 48, 26, 31, 5, 30, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (183, 26, N'attack_leader', N'attack_leader', 1, 3, 2, 68, 1, 12, 37, 5, 48, 26, 31, 6, 30, 6)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (184, 26, N'attack_leader', N'attack_leader', 1, 4, 2, 67, 1, 13, 37, 5, 48, 26, 31, 7, 30, 7)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (185, 26, N'attack_leader', N'attack_leader', 1, 5, 2, 66, 1, 14, 37, 5, 48, 26, 31, 8, 30, 8)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (186, 26, N'attack_leader', N'attack_leader', 1, 6, 2, 65, 1, 15, 37, 5, 48, 26, 31, 9, 30, 9)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (187, 26, N'attack_leader', N'attack_leader', 1, 7, 2, 64, 1, 16, 37, 5, 48, 26, 31, 10, 30, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (188, 26, N'attack_leader', N'attack_leader', 1, 8, 2, 63, 1, 17, 37, 5, 48, 26, 31, 11, 30, 11)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (189, 26, N'attack_leader', N'attack_leader', 1, 9, 2, 62, 1, 18, 37, 5, 48, 26, 31, 12, 30, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (190, 26, N'attack_leader', N'attack_leader', 0, 10, 2, 60, 1, 19, 37, 5, 48, 26, 31, 13, 30, 13)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (191, 26, N'attack_leader', N'attack_leader', 0, 11, 2, 58, 1, 20, 37, 5, 48, 26, 31, 14, 30, 14)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (192, 26, N'attack_leader', N'attack_leader', 0, 12, 2, 56, 1, 22, 37, 5, 48, 26, 31, 15, 30, 15)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (193, 27, N'cautious_leader', N'cautious_leader', 1, 1, 2, 70, 1, 30, 37, 4, 48, 2, 3, 1, 4, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (194, 27, N'cautious_leader', N'cautious_leader', 1, 2, 2, 68, 1, 30, 37, 4, 48, 2, 3, 2, 4, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (195, 27, N'cautious_leader', N'cautious_leader', 1, 3, 2, 66, 1, 30, 37, 4, 48, 2, 3, 3, 4, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (196, 27, N'cautious_leader', N'cautious_leader', 1, 4, 2, 64, 1, 35, 37, 4, 48, 2, 3, 4, 4, 2)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (197, 27, N'cautious_leader', N'cautious_leader', 1, 5, 2, 62, 1, 35, 37, 4, 48, 2, 3, 5, 4, 3)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (198, 27, N'cautious_leader', N'cautious_leader', 1, 6, 2, 60, 1, 40, 37, 4, 48, 2, 3, 6, 4, 4)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (199, 27, N'cautious_leader', N'cautious_leader', 1, 7, 2, 58, 1, 40, 37, 4, 48, 2, 3, 7, 4, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (200, 27, N'cautious_leader', N'cautious_leader', 1, 8, 2, 56, 1, 45, 37, 4, 48, 2, 3, 8, 4, 6)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (201, 27, N'cautious_leader', N'cautious_leader', 1, 9, 2, 54, 1, 45, 37, 4, 48, 2, 3, 10, 4, 8)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (202, 28, N'HEAT_shot', N'HEAT_shot', 1, 1, 2, 30, 45, 4, 43, 6, 32, -20, 1, 12, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (203, 28, N'HEAT_shot', N'HEAT_shot', 1, 2, 2, 29, 45, 4, 43, 8, 32, -22, 1, 13, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (204, 28, N'HEAT_shot', N'HEAT_shot', 1, 3, 2, 29, 45, 4, 43, 10, 32, -24, 1, 14, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (205, 28, N'HEAT_shot', N'HEAT_shot', 1, 4, 2, 28, 45, 4, 43, 12, 32, -26, 1, 15, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (206, 28, N'HEAT_shot', N'HEAT_shot', 1, 5, 2, 28, 45, 4, 43, 14, 32, -28, 1, 16, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (207, 28, N'HEAT_shot', N'HEAT_shot', 1, 6, 2, 27, 45, 4, 43, 16, 32, -30, 1, 17, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (208, 28, N'HEAT_shot', N'HEAT_shot', 1, 7, 2, 27, 45, 4, 43, 18, 32, -32, 1, 18, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (209, 28, N'HEAT_shot', N'HEAT_shot', 1, 8, 2, 26, 45, 4, 43, 20, 32, -35, 1, 19, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (210, 28, N'HEAT_shot', N'HEAT_shot', 1, 9, 2, 26, 45, 4, 43, 22, 32, -40, 1, 20, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (211, 28, N'HEAT_shot', N'HEAT_shot', 1, 10, 2, 25, 45, 4, 43, 24, 32, -40, 1, 21, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (212, 28, N'HEAT_shot', N'HEAT_shot', 1, 11, 2, 25, 45, 4, 43, 26, 32, -40, 1, 22, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (213, 28, N'HEAT_shot', N'HEAT_shot', 1, 12, 2, 24, 45, 4, 43, 30, 32, -40, 1, 23, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (214, 29, N'HE_shot', N'HE_shot', 1, 1, 2, 30, 43, -10, 36, 30, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (215, 29, N'HE_shot', N'HE_shot', 1, 2, 2, 29, 43, -7, 36, 35, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (216, 29, N'HE_shot', N'HE_shot', 1, 3, 2, 29, 43, -6, 36, 40, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (217, 29, N'HE_shot', N'HE_shot', 1, 4, 2, 28, 43, 1, 36, 45, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (218, 29, N'HE_shot', N'HE_shot', 1, 5, 2, 28, 43, 3, 36, 50, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (219, 29, N'HE_shot', N'HE_shot', 1, 6, 2, 27, 43, 6, 36, 53, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (220, 29, N'HE_shot', N'HE_shot', 1, 7, 2, 27, 43, 9, 36, 56, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (221, 29, N'HE_shot', N'HE_shot', 1, 8, 2, 26, 43, 12, 36, 59, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (222, 29, N'HE_shot', N'HE_shot', 1, 9, 2, 26, 43, 15, 36, 62, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (223, 29, N'HE_shot', N'HE_shot', 1, 10, 2, 25, 43, 18, 36, 65, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (224, 29, N'HE_shot', N'HE_shot', 1, 11, 2, 25, 43, 21, 36, 68, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (225, 29, N'HE_shot', N'HE_shot', 1, 12, 2, 24, 43, 24, 36, 71, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (226, 30, N'sniper_shot', N'sniper_shot', 1, 1, 2, 33, 43, 8, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (227, 30, N'sniper_shot', N'sniper_shot', 1, 2, 2, 32, 43, 12, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (228, 30, N'sniper_shot', N'sniper_shot', 1, 3, 2, 32, 43, 16, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (229, 30, N'sniper_shot', N'sniper_shot', 1, 4, 2, 31, 43, 20, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (230, 30, N'sniper_shot', N'sniper_shot', 1, 5, 2, 31, 43, 24, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (231, 30, N'sniper_shot', N'sniper_shot', 1, 6, 2, 30, 43, 28, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (232, 30, N'sniper_shot', N'sniper_shot', 1, 7, 2, 30, 43, 32, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (233, 30, N'sniper_shot', N'sniper_shot', 1, 8, 2, 29, 43, 36, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (234, 30, N'sniper_shot', N'sniper_shot', 1, 9, 2, 29, 43, 40, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (235, 30, N'sniper_shot', N'sniper_shot', 1, 10, 2, 28, 43, 45, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (236, 30, N'sniper_shot', N'sniper_shot', 1, 11, 2, 28, 43, 50, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (237, 30, N'sniper_shot', N'sniper_shot', 1, 12, 2, 27, 43, 55, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (238, 31, N'machinegun', N'machinegun', 1, 1, 2, 25, 40, 620, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (239, 31, N'machinegun', N'machinegun', 1, 2, 2, 24, 40, 621, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (240, 31, N'machinegun', N'machinegun', 1, 3, 2, 24, 40, 622, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (241, 31, N'machinegun', N'machinegun', 1, 4, 2, 23, 40, 623, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (242, 31, N'machinegun', N'machinegun', 1, 5, 2, 23, 40, 624, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (243, 31, N'machinegun', N'machinegun', 1, 6, 2, 22, 40, 625, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (244, 31, N'machinegun', N'machinegun', 1, 7, 2, 22, 40, 626, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (245, 31, N'machinegun', N'machinegun', 1, 8, 2, 21, 40, 627, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (246, 31, N'machinegun', N'machinegun', 1, 9, 2, 21, 40, 628, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (247, 31, N'machinegun', N'machinegun', 1, 10, 2, 20, 40, 629, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (248, 31, N'machinegun', N'machinegun', 1, 11, 2, 20, 40, 630, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (249, 31, N'machinegun', N'machinegun', 1, 12, 2, 19, 40, 631, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (250, 32, N'handyman', N'handyman', 1, 1, 2, 70, 1, 15, 49, 3, 6, 35, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (251, 32, N'handyman', N'handyman', 1, 2, 2, 68, 1, 15, 49, 3, 6, 40, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (252, 32, N'handyman', N'handyman', 1, 3, 2, 66, 1, 18, 49, 3, 6, 60, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (253, 32, N'handyman', N'handyman', 1, 4, 2, 64, 1, 18, 49, 3, 6, 80, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (254, 32, N'handyman', N'handyman', 1, 5, 2, 62, 1, 21, 49, 3, 6, 140, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (255, 32, N'handyman', N'handyman', 1, 6, 2, 60, 1, 21, 49, 3, 6, 200, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (256, 32, N'handyman', N'handyman', 1, 7, 2, 58, 1, 24, 49, 3, 6, 260, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (257, 32, N'handyman', N'handyman', 1, 8, 2, 56, 1, 24, 49, 3, 6, 320, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (258, 32, N'handyman', N'handyman', 1, 9, 2, 54, 1, 27, 49, 3, 6, 380, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (259, 32, N'handyman', N'handyman', 1, 10, 2, 52, 1, 27, 49, 3, 6, 440, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (260, 32, N'handyman', N'handyman', 1, 11, 2, 50, 1, 27, 49, 3, 6, 500, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (261, 32, N'handyman', N'handyman', 1, 12, 2, 48, 1, 27, 49, 3, 6, 560, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (262, 33, N'rocket_missile', N'rocket_missile', 1, 1, 2, 30, 45, 5, 35, 3, 58, -50, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (263, 33, N'rocket_missile', N'rocket_missile', 1, 2, 2, 29, 45, 5, 35, 3, 58, -47, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (264, 33, N'rocket_missile', N'rocket_missile', 1, 3, 2, 29, 45, 5, 35, 3, 58, -44, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (265, 33, N'rocket_missile', N'rocket_missile', 1, 4, 2, 28, 45, 5, 35, 3, 58, -41, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (266, 33, N'rocket_missile', N'rocket_missile', 1, 5, 2, 28, 45, 5, 35, 3, 58, -38, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (267, 33, N'rocket_missile', N'rocket_missile', 1, 6, 2, 27, 45, 5, 35, 3, 58, -35, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (268, 33, N'rocket_missile', N'rocket_missile', 1, 7, 2, 27, 45, 5, 35, 3, 58, -32, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (269, 33, N'rocket_missile', N'rocket_missile', 1, 8, 2, 26, 45, 5, 35, 3, 58, -29, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (270, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 26, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (271, 33, N'rocket_missile', N'rocket_missile', 1, 10, 2, 25, 45, 5, 35, 3, 58, -23, 43, -7, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (272, 33, N'rocket_missile', N'rocket_missile', 1, 11, 2, 25, 45, 5, 35, 3, 58, -20, 43, -3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (273, 33, N'rocket_missile', N'rocket_missile', 1, 12, 2, 24, 45, 5, 35, 3, 58, -17, 43, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (274, 34, N'mines', N'mines', 1, 1, 2, 15, 1, 4, 50, 640, 36, 13, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (275, 34, N'mines', N'mines', 1, 2, 2, 15, 1, 4, 50, 641, 36, 14, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (276, 34, N'mines', N'mines', 1, 3, 2, 15, 1, 5, 50, 642, 36, 15, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (277, 34, N'mines', N'mines', 1, 4, 2, 15, 1, 5, 50, 643, 36, 17, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (278, 34, N'mines', N'mines', 1, 5, 2, 15, 1, 5, 50, 644, 36, 19, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (279, 34, N'mines', N'mines', 1, 6, 2, 15, 1, 5, 50, 645, 36, 21, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (280, 34, N'mines', N'mines', 1, 7, 2, 15, 1, 5, 50, 646, 36, 23, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (281, 34, N'mines', N'mines', 1, 8, 2, 15, 1, 6, 50, 647, 36, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (282, 34, N'mines', N'mines', 1, 9, 2, 15, 1, 6, 50, 648, 36, 27, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (283, 34, N'mines', N'mines', 1, 10, 2, 15, 1, 6, 50, 649, 36, 29, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (284, 34, N'mines', N'mines', 1, 11, 2, 15, 1, 6, 50, 650, 36, 31, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (285, 34, N'mines', N'mines', 1, 12, 2, 15, 1, 6, 50, 651, 36, 33, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (286, 35, N'special_aid', N'special_aid', 1, 1, 2, 50, 1, 20, 52, 20, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (287, 35, N'special_aid', N'special_aid', 1, 2, 2, 48, 1, 21, 52, 22, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (288, 35, N'special_aid', N'special_aid', 1, 3, 2, 46, 1, 22, 52, 24, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (289, 35, N'special_aid', N'special_aid', 1, 4, 2, 44, 1, 23, 52, 26, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (290, 35, N'special_aid', N'special_aid', 1, 5, 2, 42, 1, 24, 52, 28, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (291, 35, N'special_aid', N'special_aid', 1, 6, 2, 40, 1, 25, 52, 30, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (292, 35, N'special_aid', N'special_aid', 1, 7, 2, 38, 1, 26, 52, 32, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (293, 35, N'special_aid', N'special_aid', 1, 8, 2, 36, 1, 27, 52, 34, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (294, 35, N'special_aid', N'special_aid', 1, 9, 2, 34, 1, 28, 52, 36, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (295, 36, N'binoculars', N'binoculars', 1, 1, 2, 40, 1, 32, 51, 1, 26, 8, 27, 8, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (296, 36, N'binoculars', N'binoculars', 1, 2, 2, 40, 1, 33, 51, 1, 26, 9, 27, 9, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (297, 36, N'binoculars', N'binoculars', 1, 3, 2, 39, 1, 34, 51, 1, 26, 10, 27, 10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (298, 36, N'binoculars', N'binoculars', 1, 4, 2, 38, 1, 35, 51, 1, 26, 11, 27, 11, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (299, 36, N'binoculars', N'binoculars', 1, 5, 2, 37, 1, 36, 51, 1, 26, 12, 27, 12, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (300, 36, N'binoculars', N'binoculars', 1, 6, 2, 36, 1, 38, 51, 1, 26, 13, 27, 13, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (301, 36, N'binoculars', N'binoculars', 1, 7, 2, 35, 1, 40, 51, 1, 26, 14, 27, 14, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (302, 36, N'binoculars', N'binoculars', 1, 8, 2, 34, 1, 42, 51, 1, 26, 15, 27, 15, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (303, 36, N'binoculars', N'binoculars', 1, 9, 2, 33, 1, 44, 51, 1, 26, 16, 27, 16, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (304, 36, N'binoculars', N'binoculars', 1, 10, 2, 32, 1, 46, 51, 1, 26, 17, 27, 17, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (305, 36, N'binoculars', N'binoculars', 1, 11, 2, 31, 1, 48, 51, 1, 26, 18, 27, 18, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (306, 36, N'binoculars', N'binoculars', 1, 12, 2, 30, 1, 50, 51, 1, 26, 20, 27, 20, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (307, 37, N'iron_will', N'iron_will', 1, 1, 2, 60, 1, 30, 52, 20, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (308, 37, N'iron_will', N'iron_will', 1, 2, 2, 59, 1, 32, 52, 22, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (309, 37, N'iron_will', N'iron_will', 1, 3, 2, 58, 1, 34, 52, 24, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (310, 37, N'iron_will', N'iron_will', 1, 4, 2, 57, 1, 36, 52, 26, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (311, 37, N'iron_will', N'iron_will', 1, 5, 2, 56, 1, 38, 52, 28, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (312, 37, N'iron_will', N'iron_will', 1, 6, 2, 55, 1, 40, 52, 30, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (313, 37, N'iron_will', N'iron_will', 1, 7, 2, 54, 1, 42, 52, 32, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (314, 37, N'iron_will', N'iron_will', 1, 8, 2, 52, 1, 44, 52, 34, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (315, 37, N'iron_will', N'iron_will', 1, 9, 2, 50, 1, 46, 52, 36, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (316, 38, N'adrenaline', N'adrenaline', 1, 1, 2, 60, 1, 30, 56, 20, 29, 20, 58, 20, 59, 24)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (317, 38, N'adrenaline', N'adrenaline', 1, 2, 2, 59, 1, 31, 56, 22, 29, 22, 58, 22, 59, 23)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (318, 38, N'adrenaline', N'adrenaline', 1, 3, 2, 58, 1, 32, 56, 24, 29, 24, 58, 24, 59, 22)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (319, 38, N'adrenaline', N'adrenaline', 1, 4, 2, 57, 1, 33, 56, 26, 29, 26, 58, 26, 59, 21)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (320, 38, N'adrenaline', N'adrenaline', 1, 5, 2, 56, 1, 34, 56, 28, 29, 28, 58, 28, 59, 20)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (321, 38, N'adrenaline', N'adrenaline', 1, 6, 2, 55, 1, 35, 56, 30, 29, 30, 58, 30, 59, 19)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (322, 38, N'adrenaline', N'adrenaline', 1, 7, 2, 54, 1, 36, 56, 32, 29, 32, 58, 32, 59, 17)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (323, 38, N'adrenaline', N'adrenaline', 1, 8, 2, 52, 1, 38, 56, 34, 29, 34, 58, 34, 59, 14)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (324, 38, N'adrenaline', N'adrenaline', 1, 9, 2, 50, 1, 40, 56, 36, 29, 36, 58, 36, 59, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (325, 39, N'accurate_calculation', N'accurate_calculation', 1, 1, 2, 66, 1, 30, 54, 25, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (326, 39, N'accurate_calculation', N'accurate_calculation', 1, 2, 2, 65, 1, 31, 54, 27, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (327, 39, N'accurate_calculation', N'accurate_calculation', 1, 3, 2, 64, 1, 32, 54, 29, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (328, 39, N'accurate_calculation', N'accurate_calculation', 1, 4, 2, 63, 1, 33, 54, 31, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (329, 39, N'accurate_calculation', N'accurate_calculation', 1, 5, 2, 62, 1, 34, 54, 33, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (330, 39, N'accurate_calculation', N'accurate_calculation', 1, 6, 2, 61, 1, 35, 54, 35, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (331, 39, N'accurate_calculation', N'accurate_calculation', 1, 7, 2, 60, 1, 37, 54, 37, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (332, 39, N'accurate_calculation', N'accurate_calculation', 1, 8, 2, 59, 1, 39, 54, 39, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (333, 39, N'accurate_calculation', N'accurate_calculation', 1, 9, 2, 58, 1, 41, 54, 41, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (334, 39, N'accurate_calculation', N'accurate_calculation', 1, 10, 2, 57, 1, 43, 54, 44, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (335, 39, N'accurate_calculation', N'accurate_calculation', 1, 11, 2, 56, 1, 45, 54, 47, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (336, 39, N'accurate_calculation', N'accurate_calculation', 1, 12, 2, 55, 1, 45, 54, 55, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (337, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 1, 2, 90, 62, 25, 33, 150, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (338, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 2, 2, 88, 62, 25, 33, 180, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (339, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 3, 2, 86, 62, 25, 33, 210, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (340, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 4, 2, 84, 62, 25, 33, 240, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (341, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 5, 2, 82, 62, 25, 33, 270, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (342, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 6, 2, 80, 62, 25, 33, 300, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (343, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 1, 2, 90, 62, 25, 1, 15, 49, 3, 6, 200, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (344, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 2, 2, 88, 62, 25, 1, 15, 49, 3, 6, 260, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (345, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 3, 2, 86, 62, 25, 1, 15, 49, 3, 6, 320, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (346, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 4, 2, 84, 62, 25, 1, 15, 49, 3, 6, 380, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (347, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 5, 2, 82, 62, 25, 1, 15, 49, 3, 6, 440, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (348, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 6, 2, 80, 62, 25, 1, 15, 49, 3, 6, 500, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (349, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 1, 2, 90, 62, 25, 1, 10, 17, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (350, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 2, 2, 88, 62, 25, 1, 12, 17, 30, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (351, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 3, 2, 86, 62, 25, 1, 14, 17, 39, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (352, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 4, 2, 84, 62, 25, 1, 16, 17, 46, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (353, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 5, 2, 82, 62, 25, 1, 18, 17, 53, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (354, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 6, 2, 80, 62, 25, 1, 20, 17, 60, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (355, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 1, 2, 90, 62, 25, 1, 15, 37, 4, 30, 15, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (356, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 2, 2, 88, 62, 25, 1, 17, 37, 4, 30, 17, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (357, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 3, 2, 86, 62, 25, 1, 19, 37, 4, 30, 20, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (358, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 4, 2, 84, 62, 25, 1, 22, 37, 4, 30, 23, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (359, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 5, 2, 82, 62, 25, 1, 26, 37, 4, 30, 26, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (360, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 6, 2, 80, 62, 25, 1, 31, 37, 4, 30, 30, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (361, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 1, 2, 90, 62, 25, 1, 25, 16, 20, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (362, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 2, 2, 88, 62, 25, 1, 26, 16, 28, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (363, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 3, 2, 86, 62, 25, 1, 27, 16, 36, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (364, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 4, 2, 84, 62, 25, 1, 28, 16, 44, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (365, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 5, 2, 82, 62, 25, 1, 29, 16, 52, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (366, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 6, 2, 80, 62, 25, 1, 30, 16, 60, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (367, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 1, 2, 90, 62, 25, 43, -10, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (368, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 2, 2, 88, 62, 25, 43, -5, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (369, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 3, 2, 86, 62, 25, 43, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (370, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 4, 2, 84, 62, 25, 43, 5, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (371, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 5, 2, 82, 62, 25, 43, 9, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (372, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 6, 2, 80, 62, 25, 43, 13, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (373, 46, N'freeze_shot', N'freeze_shot', 1, 1, 2, 30, 45, 6, 67, 1, 1, 5, 37, 1, 30, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (374, 46, N'freeze_shot', N'freeze_shot', 1, 2, 2, 30, 45, 6, 67, 1, 1, 5, 37, 1, 30, 7)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (375, 46, N'freeze_shot', N'freeze_shot', 1, 3, 2, 30, 45, 6, 67, 1, 1, 6, 37, 1, 30, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (376, 46, N'freeze_shot', N'freeze_shot', 1, 4, 2, 30, 45, 6, 67, 1, 1, 6, 37, 1, 30, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (377, 46, N'freeze_shot', N'freeze_shot', 1, 5, 2, 30, 45, 6, 67, 1, 1, 7, 37, 1, 30, 15)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (378, 46, N'freeze_shot', N'freeze_shot', 1, 6, 2, 30, 45, 6, 67, 1, 1, 7, 37, 1, 30, 17)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (379, 46, N'freeze_shot', N'freeze_shot', 1, 7, 2, 30, 45, 6, 67, 1, 1, 8, 37, 1, 30, 20)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (380, 46, N'freeze_shot', N'freeze_shot', 1, 8, 2, 30, 45, 6, 67, 1, 1, 8, 37, 1, 30, 23)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (381, 46, N'freeze_shot', N'freeze_shot', 1, 9, 2, 30, 45, 6, 67, 1, 1, 9, 37, 1, 30, 25)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (382, 46, N'freeze_shot', N'freeze_shot', 1, 10, 2, 30, 45, 6, 67, 1, 1, 9, 37, 1, 30, 28)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (383, 46, N'freeze_shot', N'freeze_shot', 1, 11, 2, 30, 45, 6, 67, 1, 1, 10, 37, 1, 30, 30)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (386, 46, N'freeze_shot', N'freeze_shot', 1, 12, 2, 30, 45, 6, 67, 1, 1, 10, 37, 1, 30, 30)
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO

DELETE FROM [dbo].[Crews]
GO
SET IDENTITY_INSERT [dbo].[Crews] ON 

GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (1, N'crew_su_01s', 1, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (2, N'crew_su_02', 1, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (3, N'crew_su_03', 1, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (4, N'crew_su_04', 1, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (5, N'crew_su_05', 1, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (6, N'crew_su_06', 1, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (7, N'crew_su_07', 1, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (8, N'crew_su_08', 1, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (9, N'crew_su_09', 1, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (10, N'crew_su_10', 1, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (11, N'crew_su_11', 1, 15, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (12, N'crew_su_12', 1, 3, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (13, N'crew_su_13', 1, 13, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (14, N'crew_su_14', 1, 16, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (15, N'crew_ge_01s', 2, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (16, N'crew_ge_02', 2, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (17, N'crew_ge_03', 2, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (18, N'crew_ge_04', 2, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (19, N'crew_ge_05', 2, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (20, N'crew_ge_06', 2, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (21, N'crew_ge_07', 2, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (22, N'crew_ge_08', 2, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (23, N'crew_ge_09', 2, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (24, N'crew_ge_10', 2, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (25, N'crew_ge_11', 2, 13, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (26, N'crew_ge_12', 2, 16, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (27, N'crew_ge_13', 2, 15, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 16, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (28, N'crew_ge_14', 2, 3, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (29, N'crew_us_01s', 3, -1, 2000, 0, 14, 32, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (30, N'crew_us_02', 3, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (31, N'crew_us_03', 3, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (32, N'crew_us_04', 3, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (33, N'crew_us_05', 3, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (34, N'crew_us_06', 3, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (35, N'crew_us_07', 3, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (36, N'crew_us_08', 3, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (37, N'crew_us_09', 3, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (38, N'crew_us_10', 3, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (39, N'crew_us_11', 3, 15, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (40, N'crew_us_12', 3, 13, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 16, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (41, N'crew_us_13', 3, 16, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (42, N'crew_us_14', 3, 3, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (43, N'crew_uk_01s', 4, -1, 2000, 0, 14, 28, 17, 10, 41, 1, 1, 11, 36, 31, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (44, N'crew_uk_02', 4, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (45, N'crew_uk_03', 4, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (46, N'crew_uk_04', 4, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (47, N'crew_uk_05', 4, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (48, N'crew_uk_06', 4, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (49, N'crew_uk_07', 4, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (50, N'crew_uk_08', 4, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (51, N'crew_uk_09', 4, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (52, N'crew_uk_10', 4, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (53, N'crew_uk_11', 4, 3, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (54, N'crew_uk_12', 4, 15, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 16)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (55, N'crew_uk_13', 4, 13, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (56, N'crew_uk_14', 4, 16, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (57, N'crew_su_prem_01', 1, 16, 0, 500, 11, 26, 21, 4, 40, 0, 1, 9, 23, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (58, N'crew_su_prem_02', 1, 3, 0, 500, 11, 26, 21, 4, 40, 0, 1, 9, 33, 30, 2, 8, 43, 41, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (61, N'crew_su_prem_03', 3, 16, 0, 500, 7, 46, 21, 6, 45, 0, 5, 1, 39, 25, 4, 8, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (62, N'crew_su_prem_04', 1, 16, 0, 500, 11, 26, 21, 4, 40, 0, 1, 9, 23, 32, 2, 8, 43, 41, 13, 3)
GO
SET IDENTITY_INSERT [dbo].[Crews] OFF
GO
