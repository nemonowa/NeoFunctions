# 命名：3_lvl_up
# 説明：スキルポイントの最大値をレベル+100の値に変更する処理(LVL→SPmax)
# 実行条件：IMP(レベルアップした時#LVL0だけ演出除外?
# >/function neofunction:player/level/2_exp_to_lvl
# =/function neofunction:player/level/3_lvl_up

tellraw @s[gamemode=creative] [{"text":"古い処理が呼び出されました！"}]

# 内容：SPの最大値を増やして、最大に回復する。LVLtoSP(100~600)
#scoreboard players set SPmax SP 100
scoreboard players operation SPmax SP = 00000000-0000-0000-0000-000000000001 LVL
scoreboard players operation SPmax SP *= $5 const
scoreboard players operation SPmax SP += $100 const
scoreboard players operation @a SP = SPmax SP

scoreboard players operation SPmin SP = SPmax SP
scoreboard players operation SPmin SP /= $100 const

scoreboard players operation SP20p SP = SPmax SP
scoreboard players operation SP20p SP /= $5 const

scoreboard players operation SP50p SP = SPmax SP
scoreboard players operation SP50p SP /= $2 const

scoreboard players operation SP150p SP = SPmax SP
scoreboard players operation SP150p SP += SP50p SP

scoreboard players operation SP200p SP = SPmax SP
scoreboard players operation SP200p SP += SPmax SP

#LVLtoATK (LVL+10)/10 ストレージで1/10
scoreboard players operation atk LVL = 00000000-0000-0000-0000-000000000001 LVL
scoreboard players operation atk LVL += $10 const

#LVLtoHPmax
scoreboard players operation hp LVL = 00000000-0000-0000-0000-000000000001 LVL
scoreboard players operation hp LVL *= $2 const
scoreboard players operation hp LVL /= $5 const
scoreboard players operation hp LVL += $20 const
scoreboard players operation @a HPmax = hp LVL

#LVLtoDEF
scoreboard players operation def LVL = 00000000-0000-0000-0000-000000000001 LVL
scoreboard players operation def LVL *= $3 const
scoreboard players operation def LVL /= $5 const
scoreboard players operation def LVL += $20 const

#サイドバー同期
scoreboard players operation level world = 0-0-0-0-1 LVL

#ステータス変動
function neofunction:player/attribute/lvl
effect give @a minecraft:instant_health 1 26 true

#演出
function neofunction:asset/particle/.levelup
