# 命名：904
# 説明：オルド（水守頭）に話しかけたとき。420 で館の会議、421 で選択をまだしていなければ選択をもう一度出す。それ以外はひとこと
# 実行条件：実行者・実行位置 オルド（村人、DeathLootTable neofunction:asset/summon/904）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/904

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
execute if score #temp main_story matches 420 run return run function neofunction:system/adv/tick/quest/40/d2/421
execute if score #temp main_story matches 421 unless data storage neofunction:rubra choice.council as @p run return run function neofunction:system/adv/tick/quest/40/d2/choice_a_show
# 第三章
execute if score #temp main_story matches 430 run return run function neofunction:system/adv/tick/quest/40/d3/431
execute if score #temp main_story matches 431 unless data storage neofunction:rubra choice.reveal as @p run return run function neofunction:system/adv/tick/quest/40/d3/choice_c_show
execute if score #temp main_story matches 432 run return run function neofunction:system/adv/tick/quest/40/d3/433
# 終章：広場の場面
# 星還祭は夜（neofunction:night_time）。昼は待ってもらう
execute if score #temp main_story matches 441 unless predicate neofunction:night_time run return run tellraw @p [{"text":"<"},{"text":"オルド","color":"#4A7BD0","bold":true},{"text":"> 「星還祭は、日が沈んでからだ。夜になったら、また広場で声をかけてくれ」"}]
execute if score #temp main_story matches 441 run return run function neofunction:system/adv/tick/quest/40/fin/442
# 手記 その五〜その七は、オルドから受け取ったあと（431 から）は話しかけるたびに受け取れる
execute if score #temp main_story matches 431.. as @p run tellraw @s [{"text":"<"},{"text":"オルド","color":"#4A7BD0","bold":true},{"text":"> 「アズールの手記なら、ここにある。……持っていけ。何度でも読むがいい」"}]
execute if score #temp main_story matches 431.. as @p run return run function neofunction:system/adv/tick/quest/40/d3/give_journals
tellraw @p [{"text":"<"},{"text":"オルド","color":"#4A7BD0","bold":true},{"text":"> 「水は、街のものだ。……汲むときは、必要なぶんだけ」"}]
