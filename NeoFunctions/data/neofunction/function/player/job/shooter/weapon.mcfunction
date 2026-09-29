# 命名：weapon
# 説明：
# >/function neofunction:player/job/shooter/.neo
# =/function neofunction:player/job/shooter/weapon


# SP表示
function neofunction:player/sp/.neo

# 媒体所持時のパッシブ
effect give @s glowing 3 99 false
effect give @s speed 1 0 false

# 媒体所持かつスニークでオートエイム！！！
execute as @s[scores={sneak_time=1}] at @s run tp @s ~ ~ ~ facing entity @e[tag=enemy,distance=..32,limit=1,sort=nearest] feet

