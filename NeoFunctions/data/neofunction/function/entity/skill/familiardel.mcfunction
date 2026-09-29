# 命名：システムによる完全抹消用処理
# 説明：NBT変更してから削除(付けてから1tick後に消える)
# >/function neofunction:entity/skill/del
# =/function neofunction:entity/skill/familiardel

#召喚獣の場合専用メッセ(これはあんまりよくない)
execute on owner run tellraw @s [{"selector":"@e[tag=del,tag=familiar,limit=1,sort=nearest]","color":"white","bold":true,"italic":false},{"text":" は疲れて帰った！"}]
data modify entity @s Owner set value [I;0,0,0,0]
