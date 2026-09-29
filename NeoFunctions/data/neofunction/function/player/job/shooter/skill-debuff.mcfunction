# 命名：変わり身の術
# 説明：発動時、煙幕と身代わりを生成し、周囲8mの敵対状態を解除する。（SP15消費）
# >/function neofunction:asset/skill/258
# =/function neofunction:player/job/shooter/skill-debuff


# 内容
tag @e[tag=enemy,distance=..8] add shooter-debuff

execute as @e[tag=shooter-debuff] run attribute @s[tag=!boss] minecraft:follow_range modifier add neofunction:00000010-0010-0010-0010-000000000010 -1 add_multiplied_total

execute as @s[scores={LVL=10..}] run schedule function neofunction:player/job/shooter/skill-debuff-remove 1s replace
summon arrow ~ ~ ~ {Glowing:1b,player:0b,life:1140,damage:9d,crit:1b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:levitation",amplifier:0,duration:120}]}}}}
# 演出
particle minecraft:poof ~ ~1.5 ~ 0.5 0.5 0.5 0.1 50 force
particle minecraft:campfire_signal_smoke ~ ~1.5 ~ 3 1 3 0.01 333 force

playsound minecraft:block.fire.extinguish record @a[distance=..16] ~ ~ ~ 0.3 0.7
playsound minecraft:entity.allay.item_taken record @a[distance=..16] ~ ~ ~ 0.5 1.5

# SP消費：
scoreboard players remove @s SP 15



# 変わり身くん
summon endermite ~ ~ ~ {Tags:["check"],Lifetime:2350,Silent:1b,NoAI:1b,CustomName:{"text":"変わり身くん"},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],Passengers:[{id:"minecraft:block_display",block_state:{id:"minecraft:oak_fence",properties:{}},transformation:[1.0000f,-0.0000f,0.0000f,-0.5000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{id:"minecraft:hay_block",properties:{axis:"x"}},transformation:[-0.0000f,-1.4000f,0.0000f,0.6875f,0.2000f,-0.0000f,0.0000f,3.0000f,0.0000f,0.0000f,1.4000f,-0.6875f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{id:"minecraft:carved_pumpkin",properties:{facing:"east"}},transformation:[-0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,1.0000f,-0.0000f,2.0000f,-1.0000f,0.0000f,-0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{id:"minecraft:oak_fence_gate",properties:{facing:"east",in_wall:"false",open:"false"}},transformation:[-0.0000f,0.0000f,-1.0000f,1.5000f,-0.0000f,-1.0000f,0.0000f,2.5000f,-1.0000f,0.0000f,0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{id:"minecraft:oak_fence_gate",properties:{facing:"east",in_wall:"false",open:"false"}},transformation:[-0.0000f,0.0000f,-1.0000f,-0.5000f,-0.0000f,-1.0000f,0.0000f,2.5000f,-1.0000f,0.0000f,0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{id:"minecraft:hay_block",properties:{axis:"x"}},transformation:[-0.0000f,-0.8000f,0.0000f,0.3750f,0.2000f,-0.0000f,0.0000f,3.1875f,0.0000f,0.0000f,0.8000f,-0.4375f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{id:"minecraft:oak_wood",properties:{axis:"x"}},transformation:[-0.0000f,0.0000f,1.0000f,-0.5000f,0.0000f,1.0000f,-0.0000f,1.0000f,-1.0000f,0.0000f,-0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}





