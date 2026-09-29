# 命名：change
# 説明：白刃士官のスキルセットを全習得する
# 説明：レベルキャップは習得時ではなく発動時に「このスキルはLv99になるまで発動できない！」
# >/function neofunction:system/adv/inventory_changed/250
# >魂頭防具を装備したとき、消費して習得する
# =/function neofunction:player/job/knight/change


function neofunction:player/job/revoke

function neofunction:system/scoreboard/skillreset
# 習得するスキルセット

execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/200
execute as @s[scores={LVL=0..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"白刃騎士【KNIGHT】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"パッシブ：「近接武器」の装備時に運動能力が向上し、攻撃力上昇とダメージ軽減を獲得。トリガーで攻撃力上昇を3分付与"}]}}]

execute as @s[scores={LVL=0..}] run advancement grant @s only neoadvancement:neoskill/201
execute as @s[scores={LVL=0..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"魔剣錬成【クリエイト・ソード】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"無から剣を錬成するスキル（SP30消費）"}]}}]

execute as @s[scores={LVL=5..}] run advancement grant @s only neoadvancement:neoskill/202
execute as @s[scores={LVL=5..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"白刃一閃【スラッシュ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"神速の踏み込みから放たれる斬撃。武器破壊の可能性あり。反動で一時行動不能。（SP20消費）"}]}}]

execute as @s[scores={LVL=10..}] run advancement grant @s only neoadvancement:neoskill/203
execute as @s[scores={LVL=10..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"空脚【エアステップ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"斬撃の衝撃を利用して前方へ跳躍する間合い操作技。（SP10消費）"}]}}]

execute as @s[scores={LVL=20..}] run advancement grant @s only neoadvancement:neoskill/204
execute as @s[scores={LVL=20..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"剛刃草薙【スマッシャー】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"横薙ぎの衝撃波で周囲の敵を打ち上げる突破技。（SP30消費）"}]}}]

execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/205
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"反応回復【リアクティブ・ヒール】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"受けた痛みを糧に回復する前線維持スキル。（SP10消費）"}]}}]

execute as @s[scores={LVL=25..}] run advancement grant @s only neoadvancement:neoskill/206
execute as @s[scores={LVL=25..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"鋼刃結界【スチール・ドミニオン】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"周囲の味方に攻撃力上昇と耐性を付与。（SP30消費）"}]}}]

execute as @s[scores={LVL=25..}] run advancement grant @s only neoadvancement:neoskill/207
execute as @s[scores={LVL=25..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"不動【フォートレス】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ノックバック無効を2分付与。再使用で時間リセット。（SP30消費）"}]}}]

execute as @s[scores={LVL=15..}] run advancement grant @s only neoadvancement:neoskill/208
execute as @s[scores={LVL=15..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"陽動偏向【デコイ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"敵の注意を引き寄せ攻撃を引き受ける挑発技能。（SP10消費）"}]}}]

execute as @s[scores={LVL=40..}] run advancement grant @s only neoadvancement:neoskill/209
execute as @s[scores={LVL=40..}] run tellraw @s [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"天地断裂【グランドクロス】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"天地を断つ究極の一撃。周囲に壊滅的ダメージ。（SP100消費）"}]}}]

# 消費
item replace entity @s armor.head with air

# スキルセット習得【インストール】完了演出
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.6 1.5
playsound minecraft:item.totem.use master @s ~ ~ ~ 0.4 0.9

particle minecraft:portal ~ ~1 ~ 0.4 0.6 0.4 0.2 120 force
particle minecraft:enchant ~ ~1 ~ 0.3 0.8 0.3 0.1 80 force
particle minecraft:end_rod ~ ~1 ~ 0.2 0.6 0.2 0.05 40 force

title @s subtitle {"text":"Skills Have Been Installed"}
title @s title {"text":"You Are Now a Knight","bold":true}


# give @p minecraft:player_head[minecraft:attribute_modifiers=[{type:"armor",id:"neofunction:b7170086-a3e6-424e-bfde-14ac4d2b1c23",amount:5,operation:"add_value",slot:"head"},{type:"armor_toughness",id:"neofunction:1765e717-7c0a-4a99-9959-567e49f758b3",amount:5,operation:"add_value",slot:"head"}],minecraft:enchantments={"minecraft:protection":5},minecraft:profile={id:[I;-1825724363,-23962704,-1266053110,174960319],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThjMjQ1ZmYxYTZhMTg3ZmQ4ZjcwMzEzZDIyYWE3YjFiOWQ2OGFhODIyNDNjMjNiYzY1ZDFiZjk5MDRjNTQxNiJ9fX0="}]},minecraft:lore=[{"text":"ナイトの軌跡を継承する追体験装置","color":"white","bold":false,"italic":false},[{"text":"着用すると全ての時空の","color":"white","bold":false,"italic":false},{"text":"白刃騎士","color":"light_purple","bold":false,"italic":false},{"text":"と繋がり","color":"white","bold":false,"italic":false}],{"text":"その極意を識ることができる。","color":"white","bold":false,"italic":false}],minecraft:custom_name={"text":"白刃騎士の正装","color":"light_purple","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},minecraft:custom_model_data={floats:[249.0f]},minecraft:custom_data={rare:["st"]}] 1


