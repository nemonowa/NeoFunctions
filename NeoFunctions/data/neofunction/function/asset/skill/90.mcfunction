# 命名：90
# 説明：リターンポーション
# 実行条件：進捗達成時
# >(=/function neofunction:system/effect/inv/0)(/advancement grant @s only neofunction:.skill/1)
# =/function neofunction:asset/skill/90


## 内容
##amp0 リターンポーション
teleport @e[tag=!boss,nbt={active_effects:[{id:"minecraft:invisibility",amplifier:0b}]}] 0-0-0-0-5
#演出
function neofunction:asset/particle/0


#処理が終わったら透明化を消す
effect clear @s minecraft:invisibility

## 消費MP
#scoreboard players remove @s SP 8

## クールタイム
#scoreboard players add @s CT 8

## ゲージ 半分/4 くらいの空腹
## effect give @s hunger 1 10 false



## 再使用のために進捗剥奪
advancement revoke @s only neofunction:effects_changed/inv/90