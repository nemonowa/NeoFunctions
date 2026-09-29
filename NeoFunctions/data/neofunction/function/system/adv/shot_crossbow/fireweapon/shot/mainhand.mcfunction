# 命名：mainhand
# 説明：発射時の処理
# >/adv
# =/function neofunction:system/adv/shot_crossbow/fireweapon/shot/mainhand

#advancementを削除
advancement revoke @s only neofunction:shot_crossbow/fireweapon/mainhand

#装弾数調整
summon item_display ~ ~ ~ {view_range:0f,Tags:["temp_display","del"]}
#プレイヤーのメインハンドからアイテムディスプレイのコンテナに
item replace entity @e[tag=temp_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

#クロスボウの矢を空に
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:charged_projectiles" set value []
# 【変更：2026-09-27 26.3対応】Charged フラグは廃止され、charged_projectiles の中身の有無で自動判定されるため無効化（上の行で空にしている）
# execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.tag.Charged set value 0b

#リコイル（反動の演出)
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".recoil run function neofunction:system/adv/shot_crossbow/fireweapon/shot/.recoil with entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data"
#矢のダメージを補正
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".damage run data modify entity @e[limit=1,type=arrow,sort=nearest] damage set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".damage 
#lifeを補正
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".life run data modify entity @e[limit=1,type=arrow,sort=nearest] life set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".life
#矢のモーションを補正
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".speed as @e[limit=1,type=arrow,sort=nearest] run function neofunction:system/adv/shot_crossbow/fireweapon/shot/.motion with entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data"
#消費弾薬が矢以外なら放った矢を拾えないようにする
execute unless data entity @e[tag=temp_display,limit=1,sort=nearest] item.components{"minecraft:custom_data":{ammotype:{id:"minecraft:arrow"}}} run data modify entity @e[limit=1,type=arrow,sort=nearest] pickup set value 0b

#装填処理
#ammoの値を1下げる
execute store result entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammo int 1 run data get entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammo 0.99999999
#ammoの値が0だった時、自動リロード処理
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components{"minecraft:custom_data":{ammo:0}} run return run function neofunction:system/adv/shot_crossbow/fireweapon/reload/mainhand

#名前を変更
#nameというカスタムタグを持っていない場合、displaynameをnameに代入
execute as @e[tag=temp_display,limit=1,sort=nearest] unless data entity @s item.components."minecraft:custom_data".name run data modify entity @s item.components."minecraft:custom_data".name set from entity @s item.components."minecraft:custom_name"
#テキストディスプレイを召喚(おのれもやん)
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
summon text_display ~ ~ ~ {view_range:0f,Tags:["temp_text","del"],alignment:"center",text:{"translate":"%1$s%2$s" ,"with":[{"entity": "@e[tag=temp_display,sort=nearest,limit=1]","nbt": 'item.components."minecraft:custom_data".name',"interpret": true},{"translate":"<%1$s>","color":"dark_gray","bold":true,"italic":false,"with": [{"entity": "@e[tag=temp_display,sort=nearest,limit=1]","nbt": 'item.components."minecraft:custom_data".ammo'}]}]}}
#テキストディスプレイのテキストをアイテムに代入
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_name" set from entity @e[tag=temp_text,limit=1,sort=nearest] text
#テキストディスプレイをキル
kill @e[tag=temp_text]


#クールタイム処理
#現在のゲームタイムを取得
execute store result score #Calc1 temp run time query gametime
#firerateを取得
execute store result score @e[tag=temp_display,limit=1,sort=nearest] temp run data get entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".firerate
#二つを足し合わせる
scoreboard players operation #Calc1 temp += @e[tag=temp_display,limit=1,sort=nearest] temp
#足し合わせたものをcooltimeに代入
execute store result entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".cooltime int 1 run scoreboard players get #Calc1 temp
#エンダーアイを持っているとき、inoncooltimeを1bにする
execute as @s[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".inoncooltime set value 1b

#アイテムディスプレイからプレイヤーに渡す。
item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0
#ammoの値が0じゃないときCTの確認
function neofunction:system/adv/tick/fireweapon/cooltime/mainhand






