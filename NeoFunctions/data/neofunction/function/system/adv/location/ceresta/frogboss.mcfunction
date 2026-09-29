# 命名：frogboss
# 説明：カエルシステム起動
# 実行条件：カエルシステム未起動
# >adv
# =/function neofunction:system/adv/location/ceresta/frogboss

execute if entity @e[tag=FrogBoss] run return 0
execute if entity @e[tag=FrogBossDead] run return 0
function neofunction:asset/summon/other/709