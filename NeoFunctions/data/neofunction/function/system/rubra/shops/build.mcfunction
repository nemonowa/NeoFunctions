# 命名：build
# 説明：街の底の 5 軒の家（扉のある階）を店に改装する：家具を片付け（はしご・吊りランタンは残す）、店の作りに置き直し、店の人・展示・看板・星鍛冶の金床を置く。storage neofunction:rubra shopv 1 で済み
# 説明：武器鍛冶ドルガ（扉 901,45,3261・中 x896〜900 z3258〜3264）、防具商人ザイド（扉 907,49,3259・中 x905〜909 z3254〜3258）、素材商人サリム（扉 891,45,3276・中 x886〜890 z3274〜3278）
# 説明：食堂ナディラ（扉 923,45,3304・中 x920〜926 z3305〜3309）、道具屋ハミド（扉 936,49,3312・中 x933〜939 z3313〜3317）
# 説明：やり直しは system/rubra/shops/clear のあと、storage の shopv を消して近づく（または直接このファイルを実行）
# 実行条件：どこでも（街の底のチャンクが読み込まれていること。guide から、広場の近くにプレイヤーがいるとき）
# >/function neofunction:system/rubra/guide
# =/function neofunction:system/rubra/shops/build

# 内容
data modify storage neofunction:rubra shopv set value 1
execute in neodimension:ceresta_festa run function neofunction:system/rubra/shops/clear

# ================= 武器鍛冶ドルガ（炉と金床の鍛冶場） =================
execute in neodimension:ceresta_festa run fill 896 45 3258 900 46 3264 minecraft:air replace #neofunction:rubra_house_furniture
execute in neodimension:ceresta_festa run setblock 896 45 3258 minecraft:blast_furnace[facing=east,lit=true]
execute in neodimension:ceresta_festa run setblock 897 45 3258 minecraft:lava_cauldron
execute in neodimension:ceresta_festa run setblock 898 45 3258 minecraft:blast_furnace[facing=south,lit=true]
execute in neodimension:ceresta_festa run setblock 896 45 3259 minecraft:smithing_table
execute in neodimension:ceresta_festa run setblock 896 45 3260 minecraft:grindstone[face=floor,facing=east]
execute in neodimension:ceresta_festa run setblock 898 45 3259 minecraft:anvil[facing=east]
execute in neodimension:ceresta_festa run setblock 899 45 3264 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa run setblock 900 45 3264 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa positioned 897.5 45 3262.5 run function neofunction:asset/summon/922
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_dorga] 897.5 45 3262.5 -90 0
execute in neodimension:ceresta_festa positioned 898 45 3259 run function neofunction:system/rubra/mine/forge_place
execute in neodimension:ceresta_festa run summon item_display 897.5 46.5 3264.85 {Tags:["rubra_shopdeco"],Rotation:[180f,0f],billboard:"fixed",item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_model_data":{floats:[1950f]}}},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute in neodimension:ceresta_festa run summon item_display 898.5 46.5 3264.85 {Tags:["rubra_shopdeco"],Rotation:[180f,0f],billboard:"fixed",item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:custom_model_data":{floats:[1951f]}}},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute in neodimension:ceresta_festa run summon item_display 899.5 46.5 3264.85 {Tags:["rubra_shopdeco"],Rotation:[180f,0f],billboard:"fixed",item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_model_data":{floats:[1953f]},"minecraft:enchantment_glint_override":true}},transformation:{left_rotation:[0f,0f,0.383f,0.924f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute in neodimension:ceresta_festa run summon item_display 899.5 46.1 3263.5 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],billboard:"fixed",item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":{floats:[1958f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute in neodimension:ceresta_festa run summon item_display 900.5 46.1 3263.5 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],billboard:"fixed",item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{floats:[1954f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute in neodimension:ceresta_festa run summon text_display 902.05 47.4 3261.5 {Tags:["rubra_shopdeco"],Rotation:[-90f,0f],billboard:"fixed",brightness:{block:15,sky:15},background:1426063360,text:{text:"",extra:[{text:"⚔ ",color:"#E0603A"},{text:"武器鍛冶",color:"#E8B060",bold:true},{text:"\n剣・杖・弓／星鍛冶の金床",color:"gray"}]}}

# ================= 防具商人ザイド（防具の飾り台） =================
execute in neodimension:ceresta_festa run fill 905 49 3254 909 50 3258 minecraft:air replace #neofunction:rubra_house_furniture
execute in neodimension:ceresta_festa run fill 906 49 3255 908 49 3257 minecraft:red_carpet
execute in neodimension:ceresta_festa run setblock 909 49 3257 minecraft:loom[facing=west]
execute in neodimension:ceresta_festa run setblock 905 49 3258 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa positioned 905.5 49 3256.5 run function neofunction:asset/summon/921
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_zaid] 905.5 49 3256.5 -90 0
execute in neodimension:ceresta_festa run summon armor_stand 906.5 49 3254.5 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":10241582,"minecraft:custom_model_data":{floats:[1934f]}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":10241582,"minecraft:custom_model_data":{floats:[1935f]}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":10241582,"minecraft:custom_model_data":{floats:[1936f]}}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":10241582,"minecraft:custom_model_data":{floats:[1937f]}}}}}
execute in neodimension:ceresta_festa run summon armor_stand 907.5 49 3254.5 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:custom_model_data":{floats:[1938f]}}},chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:custom_model_data":{floats:[1939f]}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:custom_model_data":{floats:[1940f]}}},feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:custom_model_data":{floats:[1941f]}}}}}
execute in neodimension:ceresta_festa run summon armor_stand 908.5 49 3254.5 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:custom_model_data":{floats:[1942f]}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:custom_model_data":{floats:[1943f]}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:custom_model_data":{floats:[1944f]}}},feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:custom_model_data":{floats:[1945f]}}}}}
execute in neodimension:ceresta_festa run summon armor_stand 909.5 49 3254.5 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:dune"},"minecraft:custom_model_data":{floats:[1946f]}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:dune"},"minecraft:custom_model_data":{floats:[1947f]}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:dune"},"minecraft:custom_model_data":{floats:[1948f]}}},feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:dune"},"minecraft:custom_model_data":{floats:[1949f]}}}}}
execute in neodimension:ceresta_festa run summon text_display 907.5 51.4 3260.05 {Tags:["rubra_shopdeco"],Rotation:[0f,0f],billboard:"fixed",brightness:{block:15,sky:15},background:1426063360,text:{text:"",extra:[{text:"🛡 ",color:"#C8743C"},{text:"防具屋",color:"#E8B060",bold:true},{text:"\n赤砂の革・紅金・紅鉄・星鉄",color:"gray"}]}}

# ================= 素材商人サリム（樽と箱の倉庫） =================
execute in neodimension:ceresta_festa run fill 886 45 3274 890 46 3278 minecraft:air replace #neofunction:rubra_house_furniture
execute in neodimension:ceresta_festa run fill 886 45 3274 886 46 3277 minecraft:barrel[facing=east,open=false]
execute in neodimension:ceresta_festa run setblock 887 45 3274 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa run setblock 888 45 3274 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa run setblock 889 45 3274 minecraft:composter[level=7]
execute in neodimension:ceresta_festa run setblock 890 45 3274 minecraft:decorated_pot[facing=west,cracked=false,waterlogged=false]
execute in neodimension:ceresta_festa run setblock 890 45 3278 minecraft:decorated_pot[facing=west,cracked=false,waterlogged=false]
execute in neodimension:ceresta_festa run setblock 887 45 3278 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa positioned 888.5 45 3276.5 run function neofunction:asset/summon/925
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_salim] 888.5 45 3276.5 -90 0
execute in neodimension:ceresta_festa run summon item_display 887.5 46.3 3274.5 {Tags:["rubra_shopdeco"],billboard:"fixed",item:{id:"minecraft:raw_iron",count:1,components:{"minecraft:custom_model_data":{floats:[1927f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute in neodimension:ceresta_festa run summon item_display 888.5 46.3 3274.5 {Tags:["rubra_shopdeco"],billboard:"fixed",item:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_model_data":{floats:[1928f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute in neodimension:ceresta_festa run summon item_display 887.5 46.3 3278.5 {Tags:["rubra_shopdeco"],billboard:"fixed",item:{id:"minecraft:rabbit_hide",count:1,components:{"minecraft:custom_model_data":{floats:[1930f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute in neodimension:ceresta_festa run summon text_display 892.05 47.4 3276.5 {Tags:["rubra_shopdeco"],Rotation:[-90f,0f],billboard:"fixed",brightness:{block:15,sky:15},background:1426063360,text:{text:"",extra:[{text:"⚖ ",color:"#B89060"},{text:"素材の買い取り",color:"#E8B060",bold:true},{text:"\n鉱石・皮・骨・花、なんでも",color:"gray"}]}}

# ================= 食堂ナディラ（窯と食卓） =================
execute in neodimension:ceresta_festa run fill 920 45 3305 926 46 3309 minecraft:air replace #neofunction:rubra_house_furniture
execute in neodimension:ceresta_festa run setblock 920 45 3309 minecraft:smoker[facing=north,lit=true]
execute in neodimension:ceresta_festa run setblock 921 45 3309 minecraft:smoker[facing=north,lit=true]
execute in neodimension:ceresta_festa run setblock 922 45 3309 minecraft:barrel[facing=north,open=false]
execute in neodimension:ceresta_festa run setblock 923 45 3309 minecraft:water_cauldron[level=3]
execute in neodimension:ceresta_festa run setblock 924 45 3309 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa run setblock 925 45 3309 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa run setblock 920 45 3306 minecraft:spruce_fence
execute in neodimension:ceresta_festa run setblock 920 46 3306 minecraft:white_carpet
execute in neodimension:ceresta_festa run setblock 921 45 3306 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute in neodimension:ceresta_festa run setblock 920 45 3307 minecraft:spruce_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute in neodimension:ceresta_festa run setblock 926 45 3306 minecraft:spruce_fence
execute in neodimension:ceresta_festa run setblock 926 46 3306 minecraft:white_carpet
execute in neodimension:ceresta_festa run setblock 925 45 3306 minecraft:spruce_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute in neodimension:ceresta_festa run setblock 926 45 3307 minecraft:spruce_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute in neodimension:ceresta_festa positioned 923.5 45 3307.5 run function neofunction:asset/summon/923
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_nadira] 923.5 45 3307.5 180 0
execute in neodimension:ceresta_festa run summon item_display 920.5 46.15 3306.5 {Tags:["rubra_shopdeco"],billboard:"fixed",item:{id:"minecraft:bread",count:1,components:{"minecraft:custom_model_data":{floats:[1965f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute in neodimension:ceresta_festa run summon item_display 926.5 46.15 3306.5 {Tags:["rubra_shopdeco"],billboard:"fixed",item:{id:"minecraft:mushroom_stew",count:1,components:{"minecraft:custom_model_data":{floats:[1962f]}}},transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute in neodimension:ceresta_festa run summon item_display 924.5 46.3 3309.5 {Tags:["rubra_shopdeco"],billboard:"fixed",item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":{floats:[1973f]},"minecraft:potion_contents":{custom_color:12595242}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
execute in neodimension:ceresta_festa run summon text_display 923.5 47.4 3303.95 {Tags:["rubra_shopdeco"],Rotation:[180f,0f],billboard:"fixed",brightness:{block:15,sky:15},background:1426063360,text:{text:"",extra:[{text:"🍲 ",color:"#E8B060"},{text:"食堂",color:"#E8B060",bold:true},{text:"\n料理・飲み物",color:"gray"}]}}

# ================= 道具屋ハミド（作業台と道具の棚） =================
execute in neodimension:ceresta_festa run fill 933 49 3313 939 50 3317 minecraft:air replace #neofunction:rubra_house_furniture
execute in neodimension:ceresta_festa run setblock 933 49 3314 minecraft:crafting_table
execute in neodimension:ceresta_festa run setblock 933 49 3315 minecraft:fletching_table
execute in neodimension:ceresta_festa run setblock 933 49 3316 minecraft:cartography_table
execute in neodimension:ceresta_festa run setblock 933 49 3317 minecraft:barrel[facing=up,open=false]
execute in neodimension:ceresta_festa run fill 934 49 3317 937 49 3317 minecraft:barrel[facing=north,open=false]
execute in neodimension:ceresta_festa positioned 936.5 49 3315.5 run function neofunction:asset/summon/924
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_hamid] 936.5 49 3315.5 180 0
execute in neodimension:ceresta_festa run summon item_display 939.85 50.5 3314.5 {Tags:["rubra_shopdeco"],Rotation:[90f,0f],billboard:"fixed",item:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":{floats:[1924f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute in neodimension:ceresta_festa run summon item_display 939.85 50.5 3315.5 {Tags:["rubra_shopdeco"],Rotation:[90f,0f],billboard:"fixed",item:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:custom_model_data":{floats:[1982f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute in neodimension:ceresta_festa run summon item_display 939.85 50.5 3316.5 {Tags:["rubra_shopdeco"],Rotation:[90f,0f],billboard:"fixed",item:{id:"minecraft:wooden_hoe",count:1,components:{"minecraft:custom_model_data":{floats:[14f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute in neodimension:ceresta_festa run summon text_display 936.5 51.4 3311.95 {Tags:["rubra_shopdeco"],Rotation:[180f,0f],billboard:"fixed",brightness:{block:15,sky:15},background:1426063360,text:{text:"",extra:[{text:"⛏ ",color:"#C9A27E"},{text:"道具屋",color:"#E8B060",bold:true},{text:"\nつるはし・魔力瓶",color:"gray"}]}}
