# 命名：回復処理
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/heal


# 説明：周囲16m以内の敵が回復する。
effect give @s glowing 1 1

tag @e[tag=enemy,distance=..16,limit=3,sort=nearest] add Healing

tellraw @a[distance=..32] [{"text":"* "},{"selector":"@s"},{"text":" は"},{"text":"ヒール","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"周囲16m以内の敵が回復する。"}]}},{"text":"を唱えた！"}]

schedule function neofunction:entity/skill/heal_particle 10t append
schedule function neofunction:entity/skill/heal_particle 20t append
schedule function neofunction:entity/skill/heal_particle 30t append
schedule function neofunction:entity/skill/heal_particle 40t append
schedule function neofunction:entity/skill/heal_particle 50t append
schedule function neofunction:entity/skill/heal_particle 60t append
schedule function neofunction:entity/skill/heal_particle 70t append
schedule function neofunction:entity/skill/heal_particle 80t append
schedule function neofunction:entity/skill/heal_particle 90t append
schedule function neofunction:entity/skill/heal_particle 100t append
schedule function neofunction:entity/skill/heal_particle 110t append
schedule function neofunction:entity/skill/heal_particle 120t append
schedule function neofunction:entity/skill/heal_particle 130t append
schedule function neofunction:entity/skill/heal_particle 140t append
schedule function neofunction:entity/skill/heal_particle 150t append
schedule function neofunction:entity/skill/healed 160t append