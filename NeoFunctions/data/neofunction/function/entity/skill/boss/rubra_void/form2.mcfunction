# 命名：form2
# 説明：【追加：2026-10-09 ルブラ編】第 2 形態「ヴォイド・ゼロ」：空高くにいるあいだは耐性 V。柱 8 本を灯すと光の鎖で舞台へ引きずり下ろされ（2 秒で降り、15 秒とどまる＝攻撃が通る。星還しの矢で上乗せ）、そのあと鎖を引きちぎって空へ戻る。星屑を拾う
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/form2

# 内容
function neofunction:entity/skill/boss/rubra_void/pillars
execute if score #rv_lit temp matches 8 if data storage neofunction:rubra fin{drag:0} run function neofunction:entity/skill/boss/rubra_void/drag_start
execute if data storage neofunction:rubra fin{drag:0} run effect give @s minecraft:resistance 2 4 true
execute unless data storage neofunction:rubra fin{drag:0} run function neofunction:entity/skill/boss/rubra_void/drag_tick
