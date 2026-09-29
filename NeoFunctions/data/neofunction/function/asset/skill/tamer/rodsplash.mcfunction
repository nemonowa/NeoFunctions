# 命名：tamer/rodsplash
# 説明：釣り竿でヒットした本体(@s)を中心に、Sweeping Edgeのレベルに応じた半径(レベル+1、fishingrod.mcfunctionが算出したtemp.splashRadius)以内の敵にも巻き込みダメージを与える。
# 本体自身は巻き込み対象から除外する。
# ※Sweeping Edge未所持(lvl0)でも半径1は必ずあるため、この関数は常に呼ばれる(fishingrodmacro.mcfunction側にガード無し)。
# 使役士官の半径ボーナスは廃止（Sweeping Edgeのレベルのみで決まる）。攻撃力Attributeの1.5倍ボーナスとは別枠。
# >/function neofunction:asset/skill/tamer/fishingrodmacro 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) as @e[tag=hooked,limit=1,sort=nearest] 実行位置@s(@e[tag=hooked,limit=1,sort=nearest]時点)
# =/function neofunction:asset/skill/tamer/rodsplash


$execute as @e[tag=enemy,distance=..$(splashRadius),tag=!hooked] at @s run function neofunction:asset/skill/tamer/rodsplashhit with storage neofunction:tamer temp
