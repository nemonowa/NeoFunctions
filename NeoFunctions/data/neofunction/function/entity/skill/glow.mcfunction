# 命名：glow
# 説明：実行者を発光させる。実行者が既に発光している場合は解除する。tag=invを持っていた場合発光させない。
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/glow



## 内容
### 既に発光を持ってた場合解除する。
tag @s[nbt={Glowing:1b}] add glow1
tag @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] add glow1

### エンティティはタグで発光させる
data merge entity @s[tag=!inv] {Glowing:1b}

### プレイヤーはエフェクトで発光させる。
effect give @s[type=player] glowing infinite 127 false
