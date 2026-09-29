# 命名：不動【フォートレス】
# 説明：2分間ノックバックを無効化する。SP30消費。
# 説明：発動中、8m以内の敵に1秒毎の挑発（鈍足）を撒いて足止めする。効果終了時に周囲へ衝撃波ダメージ。
# 説明：</function neofunction:system/clock/300_second
# >
# =/function neofunction:asset/skill/207


# 内容：
tag @s add skillironwill


# 発動：
effect give @s glowing 1 0
tellraw @s {"text":"不動の効果がかかった。","color":"green",hover_event:{"action":"show_text","value":"2分間ノックバックを無効化する。SP30消費。"}}

execute in neodimension:nexus run summon endermite 1295 129.00 1288 {NoGravity:1b,Silent:1b,Team:"white",PersistenceRequired:1b,NoAI:1b,Lifetime:0,PlayerSpawned:0b,Tags:["skill207","check"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}]}


# 演出
particle crit ~ ~1 ~ 0.5 0.5 0.5 0.5 30 force
playsound block.anvil.land master @a[distance=..16] ~ ~ ~ 1 1.4 0

# 自己ループ
function neofunction:asset/skill/207-1


# 実行部分：
attribute @s minecraft:knockback_resistance modifier add neofunction:00000000-0001-0000-0000-000000000000 100.0 add_value



# 消費SP
scoreboard players remove @s SP 30