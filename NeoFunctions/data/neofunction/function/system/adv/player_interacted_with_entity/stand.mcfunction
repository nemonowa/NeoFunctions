# 命名：stand
# 説明：アマスタ機構
# >
# =/function neofunction:system/adv/player_interacted_with_entity/stand


# 
tellraw @s[gamemode=creative] [{"text":"管理者通知：アマスタ「"},{"selector":"@e[limit=1,sort=nearest,type=armor_stand]"},{"text":"」にインタラクション"}]

