# 命名：プレイヤー処理
# 説明：
# 実行条件：毎tick @a
# >/function neofunction:tick
# =/function neofunction:player/tick


# 内容
# 進捗再装填用
advancement revoke @a from neofunction:.clock/1t

# ジョブスキルクロック
execute as @a[scores={SP=1..}] run function neofunction:player/job/.neo

# （死亡画面表示中を含む）スポーン後、一回までのプレイヤーを検知（HCでは死亡中は進捗が止まるため
execute as @a[scores={death=1}] run function neofunction:player/survival/death

# タイトルコール
execute as @a[tag=!marked] at @s if entity @e[distance=..8,tag=marked] run function neofunction:asset/title/marked
execute as @a[gamemode=adventure,tag=!argonaute] run function neofunction:player/mode/.neo

# エフェクト検知
# execute as @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run function neofunction:system/adv/effects_changed/id30
