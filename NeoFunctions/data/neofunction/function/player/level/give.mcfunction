# 命名：give
# 説明：ネザースター所得時に呼び出される処理
# 説明：個数をスコアに記録し現在までの合計に加算する。
# 説明：スコアはワールド共通でEXPというスコア名でχに記録する
# 説明：スコアはプレイヤー個別でEXPというスコア名で各プレイヤーに記録する。
# >/function neofunction:system/adv/inventory_changed/nether_star
# =/function neofunction:player/level/give


# 内容
execute store result score temp EXP run clear @s minecraft:nether_star

# 記録
scoreboard players operation Skill-Star world += temp EXP
scoreboard players operation star EXP += temp EXP

# 通知
tellraw @s [{"text":"* ","color":"yellow",hover_event:{"action":"show_text","value":[{"text":"説明：新スキル獲得に利用できる経験値。ワールド全体で共有され、利用可能合計数はサイドバーのS-Starで確認できる。"}]}},{"selector":"@s","color":"white"},{"text":" が"},{"text":"ホープスター","color":"gold"},{"text":"を"},{"score":{"name":"temp","objective":"EXP"},"color":"gold","bold":true},{"text":"つ解放した！総量："},{"score":{"name":"star","objective":"EXP"},"color":"gold","bold":true},{"text":"Stars"}]

# 演出
playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1 2

# 再使用処理
scoreboard players set temp EXP 0
advancement revoke @s only neofunction:inventory_changed/star