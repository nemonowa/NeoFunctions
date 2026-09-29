# 命名：lvl
# 説明：存在解析処理
# 実行条件：アンカーポイントを解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/lvl


# 分類2 レベル
execute as @s[tag=lv9] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル9"},{"text":"【ワールズ・エンティティ】","color":"gold",hover_event:{"action":"show_text","value":[{"text":"頂天。理を変える力を持つ存在。"}]}}]

execute as @s[tag=lv8] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル8"},{"text":"【ゴッズ・エンティティ】","color":"yellow",hover_event:{"action":"show_text","value":[{"text":"神話に出るような絶大な力を持つ存在。"}]}}]

execute as @s[tag=lv7] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル7"},{"text":"【アルティメット・エンティティ】","color":"dark_red",hover_event:{"action":"show_text","value":[{"text":"生態系ごと変えるほどの力を持つ敵。究極の力を持つ敵。"}]}}]

execute as @s[tag=lv6] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル6"},{"text":"【レジェンダリー・エンティティ】","color":"red",hover_event:{"action":"show_text","value":[{"text":"複数の街が壊滅するような伝説的な強さの敵。"}]}}]

execute as @s[tag=lv5] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル5"},{"text":"【スーパー・エンティティ】","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"一つの街が壊滅する強さの敵。"}]}}]

execute as @s[tag=lv4] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル4"},{"text":"【エピック・エンティティ】","color":"light_purple",hover_event:{"action":"show_text","value":[{"text":"天敵であり捕食者。真人間では正面から太刀打ちできない強さの敵。"}]}}]

execute as @s[tag=lv3] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル3"},{"text":"【レガシー・エンティティ】","color":"dark_aqua",hover_event:{"action":"show_text","value":[{"text":"人間でも装備を揃えれば抗える強さの敵。"}]}}]

execute as @s[tag=lv2] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル2"},{"text":"【ノーマル・エンティティ】","color":"aqua",hover_event:{"action":"show_text","value":[{"text":"人間でも十分に倒せる強さの敵。"}]}}]

execute as @s[tag=lv1] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"脅威レベル1"},{"text":"【ウィーク・エンティティ】","color":"white",hover_event:{"action":"show_text","value":[{"text":"人間(※HP20の初期状態スティーブを指す)でも難なく倒せる強さの敵。"}]}}]