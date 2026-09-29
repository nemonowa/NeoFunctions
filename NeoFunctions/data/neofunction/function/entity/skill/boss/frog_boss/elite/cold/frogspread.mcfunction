# 命名：frogspread
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/cold/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/cold/frogspread

summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[1d,1d,1d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[-1d,1d,1d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[1d,1d,-1d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[-1d,1d,-1d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[1.41d,1d,0d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[-1.41d,1d,0d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[0d,1d,1.41d]}
summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread"],Motion:[0d,1d,-1.41d]}

playsound entity.witch.throw hostile @a[distance=..16] ~ ~ ~ 100 0.5
