# 命名：.neo
# 説明：エンティティ処理
# 説明：execute as @s[type=armor_stand]
# >/function neofunction:entity/.spawn/mob/safe
# =/function neofunction:entity/.spawn/mob/armor_stand/.neo


# 印板共通
execute as @s[tag=spellsign] at @s run function neofunction:entity/.spawn/mob/armor_stand/spellsign

# 個別処理
execute as @s[tag=neocraft] at @s run function neofunction:entity/.spawn/mob/armor_stand/neocraft
execute as @s[tag=neokitchen] at @s run function neofunction:entity/.spawn/mob/armor_stand/neokitchen
execute as @s[tag=upgradefurnace] at @s run function neofunction:entity/.spawn/mob/armor_stand/upgradefurnace
execute as @s[tag=red] at @s run function neofunction:entity/.spawn/mob/armor_stand/red
execute as @s[tag=green] at @s run function neofunction:entity/.spawn/mob/armor_stand/green
execute as @s[tag=yellow] at @s run function neofunction:entity/.spawn/mob/armor_stand/yellow
execute as @s[tag=brown] at @s run function neofunction:entity/.spawn/mob/armor_stand/brown
execute as @s[tag=lightgray] at @s run function neofunction:entity/.spawn/mob/armor_stand/lightgray
execute as @s[tag=pink] at @s run function neofunction:entity/.spawn/mob/armor_stand/pink
execute as @s[tag=purple] at @s run function neofunction:entity/.spawn/mob/armor_stand/purple
execute as @s[tag=magenta] at @s run function neofunction:entity/.spawn/mob/armor_stand/magenta
execute as @s[tag=white] at @s run function neofunction:entity/.spawn/mob/armor_stand/white
execute as @s[tag=black] at @s run function neofunction:entity/.spawn/mob/armor_stand/black
execute as @s[tag=darkblue] at @s run function neofunction:entity/.spawn/mob/armor_stand/darkblue
execute as @s[tag=lime] at @s run function neofunction:entity/.spawn/mob/armor_stand/lime
execute as @s[tag=lightblue] at @s run function neofunction:entity/.spawn/mob/armor_stand/lightblue
execute as @s[tag=cyan] at @s run function neofunction:entity/.spawn/mob/armor_stand/cyan
execute as @s[tag=orange] at @s run function neofunction:entity/.spawn/mob/armor_stand/orange
execute as @s[tag=gray] at @s run function neofunction:entity/.spawn/mob/armor_stand/gray

# 破壊不能ブロック破壊系
execute as @s[tag=bedrock] at @s run function neofunction:entity/.spawn/mob/armor_stand/bedrock
execute as @s[tag=barrier] at @s run function neofunction:entity/.spawn/mob/armor_stand/barrier
execute as @s[tag=commandblock] at @s run function neofunction:entity/.spawn/mob/armor_stand/commandblock
execute as @s[tag=chaincommandblock] at @s run function neofunction:entity/.spawn/mob/armor_stand/chaincommandblock
execute as @s[tag=repeatingcommandblock] at @s run function neofunction:entity/.spawn/mob/armor_stand/repeatingcommandblock

# 設置系
execute as @s[tag=gomi] at @s run function neofunction:entity/.spawn/mob/armor_stand/gomi
execute as @s[tag=mre] at @s run function neofunction:entity/.spawn/mob/armor_stand/mre

# 設置系
execute as @s[tag=bomb] at @s run function neofunction:entity/.spawn/mob/armor_stand/bomb

# 収穫系
execute as @s[tag=harvestberry] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestberry
execute as @s[tag=harvestpotato] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestpotato
execute as @s[tag=harvestcarrot] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestcarrot
execute as @s[tag=harvestpumpkin] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestpumpkin
execute as @s[tag=harvestmelon] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestmelon
execute as @s[tag=harvestwheat] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestwheat
execute as @s[tag=harvestbeetroot] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestbeetroot
execute as @s[tag=harvestsugarcane] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestsugarcane
execute as @s[tag=harvestwart] at @s run function neofunction:entity/.spawn/mob/armor_stand/harvestwart
# 範囲破壊系
execute as @s[tag=woodbreaker] at @s run function neofunction:entity/.spawn/mob/armor_stand/woodbreaker
execute as @s[tag=cobblestonebreaker] at @s run function neofunction:entity/.spawn/mob/armor_stand/cobblestonebreaker

# 処理
kill @s[tag=spellsign]
