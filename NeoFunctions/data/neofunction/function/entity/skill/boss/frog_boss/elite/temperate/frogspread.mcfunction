# 命名：frogspread
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/finish
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/frogspread

summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[2d,0.7d,0d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[-2d,0.7d,0d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[0d,0.7d,2d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[0d,0.7d,-2d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[1.26d,1.2d,1.26d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[-1.26d,1.2d,1.26d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[1.26d,1.2d,-1.26d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"ochre_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[-1.26d,1.2d,-1.26d]}

playsound entity.witch.throw hostile @a[distance=..16] ~ ~ ~ 100 0.5
