Name=["灼熱魚（フレア・フィッシュ）","黄金鮫（ゴールド・シャーク）","溶岩海老（ラバ・シュリンプ）","御肴卿（フィッシュロン）"]
Discription=["テンプレート","テンプレート","テンプレート","テンプレート"]

for i in range(2,5):
    with open(str(i)+".json","w",encoding="utf-8") as f:
        f.write('{"parent": "neoadvancement:neofishing/root/nether/'+str(i-1)+'",\n  "display": {\n    "icon": {\n      "item": "minecraft:spider_eye",\n      "nbt": "{CustomModelData:'+str(i+1450)+'}"\n    },\n    "title": {\n      "translate": "魚類観測：'+Name[i-1]+'","color": "white","bold": true,"italic": false\n    },\n"description": {"translate": "§b条件：§r指定魚類(ID:'+str(i)+')を観測する。\\n§9説明：§r'+Discription[i-1]+'","color": "white"},\n    "frame": "task",\n    "show_toast": false,\n    "announce_to_chat": false,\n    "hidden": true\n  },\n  "criteria": {\n    "requirement": {\n      "trigger": "minecraft:inventory_changed",\n      "conditions": {\n        "player": {\n          "type_specific": {\n            "type": "player",\n            "advancements": {\n              "neoadvancement:neoitem/root": true\n            }\n          }\n        },\n        "items": [\n          {\n            "nbt": "{CustomModelData:'+str(i+1450)+'}","items": ["minecraft:spider_eye"]\n          }\n        ]\n      }\n    }\n  }\n}')

