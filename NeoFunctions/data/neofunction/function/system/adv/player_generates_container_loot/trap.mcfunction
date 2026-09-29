# 命名：trap
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_generates_container_loot/trap

# 内容
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:trapped_chest
summon shulker ~ ~ ~ {Silent:1b,AttachFace:0b,Passengers:[{id:"minecraft:block_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.0f,-0.5f],scale:[1f,1f,1f]},block_state:{id:"minecraft:chest"}}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
say ミミックじゃん


# 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_generates_container_loot/trap



#give @p trapped_chest[minecraft:container_loot={loot_table:"neofunction:trap"}] 1