# 命名：clear
# 説明：討伐の報酬ゾーンを消す（再戦のとき）：宝箱 9 つ（中身ごと）、アンカー 139、帰還ゲートの見た目と右クリックできる所。落ちたアイテムも消す
# 説明：アンカーの転移先の記録（storage pos:139）は残す
# 実行条件：どこでも（舞台のまわりのチャンクが読み込まれていること）
# >/function neofunction:system/rubra/fin/reward/build
# >/function neofunction:entity/skill/boss/rubra_void/start
# >/function neofunction:system/rubra/fin/reset_2
# =/function neofunction:system/rubra/fin/reward/clear

# 内容
execute in neodimension:ceresta_festa run kill @e[tag=rubra_reward]
execute in neodimension:ceresta_festa run fill 917 200 3278 925 200 3286 minecraft:air replace minecraft:chest
execute in neodimension:ceresta_festa run kill @e[type=item,x=910,y=195,z=3270,dx=24,dy=12,dz=24]
data remove storage neofunction:rubra reward
# 帰還ゲート（ストラクチャー）の床より上を空気に戻す
execute in neodimension:ceresta_festa run fill 919 200 3294 923 205 3298 minecraft:air
# 舞台のまわりを boss のバイオームに戻す（報酬を出すときは build がこのあと safedungeon に塗る）
function neofunction:system/rubra/fin/reward/biome_boss
