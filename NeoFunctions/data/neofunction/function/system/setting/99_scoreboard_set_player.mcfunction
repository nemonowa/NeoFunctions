# 命名：99_scoreboard_set_player
# 説明：ワールドセッティング
# >/function neofunction:system/setting/2_scoreboard
# >/function neofunction:asset/event/log-in/playerfirst_log-in
# =/function neofunction:system/setting/99_scoreboard_set_player


# 実行条件：初回ロード
#ミス　スコアボードは整数やろがい#scoreboard players set @s SPD 0.1

## 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/99_scoreboard_set_player"}

#基礎ステータス
scoreboard players set @s HPnow 20
scoreboard players set @s HPmax 20
scoreboard players set @s SPmax 100
scoreboard players set @s ATK 1
scoreboard players set @s DEF 0
scoreboard players set @s CRT 1
scoreboard players set @s INT 1
scoreboard players set @s RES 1
scoreboard players set @s LUK 1
scoreboard players set @s LVL 1
scoreboard players set @s SP 100
scoreboard players set @s MiningSpeed 20

scoreboard players set @s name 0
scoreboard players set @s roll 2

# その他
# scoreboard players set used EXP 1
scoreboard players set @s ShardC 1

# SKILL
scoreboard players set @s slotR 0
scoreboard players set @s slotG 0
scoreboard players set @s slotB 0



