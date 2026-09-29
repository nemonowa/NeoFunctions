# 命名：.neo
# 説明：エンティティ処理
# 説明：エンティティ初期スポーン時。[tag=check]がないentityが存在するとき
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/.neo


# タグチェック（カスタムタグを持っているかどうか(タグを持っていない=バニラmob)）
execute if entity @s[tag=] as @s run tag @s add vanilla
execute unless entity @s[tag=] as @s run function neofunction:entity/.spawn/tag

# ヘルスチェック（HPを持っているかどうか）
# 【変更：2026-09-28 26.3対応】1.21.5 から team の条件が生き物以外（アイテム・矢など）にも当てはまるようになり、team=! で生き物を見分ける方法が使えなくなった。生き物だけが必ず持つ HurtTime の有無で見分ける（ユーザーの判断）
execute unless data entity @s HurtTime as @s run function neofunction:entity/.spawn/obj
# 【変更：2026-09-28 26.3対応】1.21.5 から team の条件が生き物以外（アイテム・矢など）にも当てはまるようになり、team=! で生き物を見分ける方法が使えなくなった。生き物だけが必ず持つ HurtTime の有無で見分ける（ユーザーの判断）
execute if data entity @s HurtTime as @s run function neofunction:entity/.spawn/mob

# チームチェック（チームがなければ分け）
# 【変更：2026-09-29 26.3対応】1.21.5 から team の条件が生き物以外（アイテム・矢・トロッコなど）にも当てはまるようになった。1.20.4 と同じく生き物だけをチーム分けするため、生き物だけが持つ HurtTime の有無を条件に足す（ユーザーの判断）
execute if entity @s[team=] if data entity @s HurtTime run function neofunction:entity/.spawn/team

# portal
execute unless data entity @s {PortalCooldown:0} run tag @s add portalcooldown

# チェック済みにする
tag @s add check
