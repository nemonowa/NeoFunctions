# 命名：found
# 説明：【追加：2026-10-14 ルブラ編】スキル 260：見つけた鉱石に、光る表示（block_display、タグ skill260_glow）を重ねる。10 秒後に end で消す
# >/function neofunction:asset/skill/260/scan_m・scan_v
# =/function neofunction:asset/skill/260/found

# 内容
execute align xyz unless entity @e[type=block_display,tag=skill260_glow,dx=0,dy=0,dz=0] run function neofunction:asset/skill/260/glow
schedule function neofunction:asset/skill/260/end 200t replace
particle minecraft:wax_off ~ ~0.5 ~ 0.4 0.4 0.4 0 12 normal
return 1
