# 命名：invisibility
# 説明：effects_changedは変化したときだけ
# 説明：プレイヤーへの透明エフェクトは一回きり（時間継続はさせない）
# 実行条件：透明エフェクトを持ったエンティティがいるとき。
# >/function neofunction:system/1_detection
# =/function neofunction:system/adv/effects_changed/invisibility


# 内容
# SPリセット
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:0b}]}] run scoreboard players set @s SP 100
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:0b}]}] run function neofunction:asset/particle/.mp_heal
# tellraw @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:0b}]}] {"text":"* SP=100","bold":true,"italic":true,"color":"green",hover_event:{"action":"show_text",value:"SPがリセットされた！"}}
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:0b}]}] run effect clear @s minecraft:invisibility

# GM
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:1b}]}] run gamemode adventure @s[gamemode=!adventure]
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:2b}]}] run gamemode spectator @s[gamemode=!spectator]
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:3b}]}] run gamemode creative @s[gamemode=!creative]
# execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:4b}]}] run gamemode survival @s[gamemode=!survival]

# GOCの処理、周囲のプレイヤーを高さ55以下のランダムな場所へ
execute as @s[nbt={active_effects:[{id:"minecraft:invisibility",amplifier:25b}]}] run spreadplayers ~ ~ 20 50 under 55 false @s

# 暗殺士官【ASSASIN】の透明化時の防具処理
execute if entity @s[tag=!inv_assasin,advancements={neoadvancement:neoskill/250=true}] run function neofunction:player/job/assasin/disarmor

# 処理が終わったら透明化を消す
advancement revoke @s only neofunction:effects_changed/invisibility

