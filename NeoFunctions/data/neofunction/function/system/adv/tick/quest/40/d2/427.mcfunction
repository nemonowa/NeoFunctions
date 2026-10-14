# 命名：427
# 説明：【追加：2026-10-09 ルブラ編】番人の間：黒い水に侵された守り手の像が立ち上がる。会話の最後にボス戦「涸れの番人」を始める
# 実行条件：実行者 プレイヤー。#temp main_story 426、黒い水を押し流したあと
# >/function neofunction:system/adv/tick/quest/40/d2/zone
# =/function neofunction:system/adv/tick/quest/40/d2/427

# 内容
execute unless score #temp main_story matches 426 run return 0
scoreboard players set #temp main_story 427
execute as @e[type=marker,tag=rubra_mira_w3,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
# 負けてやり直すときは短く
execute if data storage neofunction:rubra d2{kretry:1b} run return run function neofunction:entity/skill/boss/rubra_keeper/start
data modify storage neofunction:rubra talk set value [{Text:{text:"広間の床が揺れた。奥の大きな水槽から、それは立ち上がった。",color:"gray",italic:true},Delay:80,Sound:{Sound:"minecraft:entity.iron_golem.repair",Pitch:0.4}},{Text:{text:"青い石の巨人。水守の衣、水晶の杖、穏やかに祈る顔。……けれど、その体の半分以上が黒く染まり、ひび割れから黒い水が滴り落ちている。",color:"gray",italic:true},Delay:140,Sound:{Sound:"minecraft:block.pointed_dripstone.drip_water",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「涸れの番人……台座に、そう刻み直されてる」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん、四隅の水門！　あいつ、黒い水に守られてる。澄んだ水で洗い流せば……四つとも、いっぺんに開けて！」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.7},Command:"function neofunction:entity/skill/boss/rubra_keeper/start"}]
function neofunction:system/adv/tick/quest/40/d1/talk
