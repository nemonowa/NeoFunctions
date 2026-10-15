# 命名：.neo
# 説明：エンティティ処理
# 説明：エンティティ初期スポーン時。[tag=check]がないentityが存在するとき
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/.neo


# タグチェック（カスタムタグを持っているかどうか(タグを持っていない=バニラmob)）
execute if entity @s[tag=] as @s run tag @s add vanilla
execute unless entity @s[tag=] as @s run function neofunction:entity/.spawn/tag

# ヘルスチェック（HPを持っているかどうか）
# 生き物だけが必ず持つ HurtTime の有無で見分ける
execute unless data entity @s HurtTime as @s run function neofunction:entity/.spawn/obj
# 生き物だけが必ず持つ HurtTime の有無で見分ける
execute if data entity @s HurtTime as @s run function neofunction:entity/.spawn/mob

# チームチェック（チームがなければ分け）
execute if entity @s[team=] if data entity @s HurtTime run function neofunction:entity/.spawn/team

# portal
execute unless data entity @s {PortalCooldown:0} run tag @s add portalcooldown

# チェック済みにする
tag @s add check
