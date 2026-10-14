# 命名：heads
# 説明：【追加：2026-10-14 ルブラ編】ルブラの NPC に頭（minecraft-heads.com のプレイヤーの頭）を付ける。召喚の関数にも同じ頭が入っている。生成は scratchpad の heads.py
# 実行条件：実行者 頭の無いルブラの NPC（村人のタグ rubra_npc）
# >/function neofunction:system/rubra/guide
# =/function neofunction:system/rubra/heads

# 内容
# ミラ（129803）
execute if entity @s[tag=rubra_mira] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwYjEzNjE2OGYzNzA4YzBjY2E2ZjQyZDE0MDQ2NWMzYTFhNDQ3YTJlNDI1ZWM0NWU3ODhjNWM3OTIwZDM2NSJ9fX0="}]}]
# バルド（125728）
execute if entity @s[tag=rubra_baldo] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FkNzEyOTllZmJlMjc2ZTlhNjc5ZmFhOTcyYmM2ODMzZmViYjFiNzczMjA2MjE2ZTI1YjE0NWY2OGQ1ZTk0OCJ9fX0="}]}]
# オルド（78102）
execute if entity @s[tag=rubra_ordo] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTBlOTA1ZWE0YjBkN2FlM2I2ZjVmZTIzYjRmYTE3ZDg2N2Y4NmNhN2I1YjUyNGU1MTNkMDk3YjRjOGM2NjI3YiJ9fX0="}]}]
# カシム（111995）
execute if entity @s[tag=rubra_kasim] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTIwNDk0Zjc3OWEwZjNjYWI5NmIwYmQwZGFmZjBiYWRlMjhhMjE3NDllMjJlNjcyM2MxODdhNzU2OTdkZjhhMSJ9fX0="}]}]
# 洗い場の子ども（129431）
execute if entity @s[tag=rubra_child] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQzNzQ1NTdhNWRhMDJhZWM0NjlmMTIwZjIyYjAzNmZhYjhjYjcwMWNlZTRlZjhkOTI2OWMwMDJjZjliMzJkNCJ9fX0="}]}]
# ヴァルカ（130046）
execute if entity @s[tag=rubra_valka] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjViNWYyNTkwZjEwZGMzMzYzZDJjZDEyZGRiYTM3ODUyNmZhMjhlMWJmOGFkY2YzZDM0MGYwODQ4NmY4ZmFkZiJ9fX0="}]}]
# 防具商人ザイド（86150）
execute if entity @s[tag=rubra_zaid] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjUzZjVjOTYzMzViNTQxNjQzMDQ0OWMxNGZiZjcwNWI4NGFiMGQ0NGM2ZjlmNWUzNjNiZDA5ODI4ZTc2NjJmMiJ9fX0="}]}]
# 武器鍛冶ドルガ（102067）
execute if entity @s[tag=rubra_dorga] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMThmNzk0ZTRhNTY0OThkOTI1NzIwODAzYjkyMDUxODYzZWRlMjA0NTBlYTQ1MzEwMmI0N2ZhM2U5Y2M0ZWIwNCJ9fX0="}]}]
# 食堂の主人ナディラ（129417）
execute if entity @s[tag=rubra_nadira] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjYxNGY2MjdjNWI0NDk5ZTU0NmIyNjdjYjE3NzdmMmU5YmQ4NmZlN2RlMmVjYTY3ODg0ZWIwMjY2MmU5YzNhNSJ9fX0="}]}]
# 道具屋ハミド（126985）
execute if entity @s[tag=rubra_hamid] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY2YmRkMGFiN2UwZTg0MDMyOTU0OTgxNTc1MzYzM2FkNDZkYTQ3NzU3NDEyOWQ2NmQyNDhmZmEwMzM2YmEzNyJ9fX0="}]}]
# 素材商人サリム（115567）
execute if entity @s[tag=rubra_salim] run return run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzc0MDNlMTM2NDE3YTBhNTI4ZGE0NGJmZTM5YzRmZmRmMWRiZDI4NTRiYTVhNDNmNTc1NTNjMzllMWI4Y2RkOSJ9fX0="}]}]
