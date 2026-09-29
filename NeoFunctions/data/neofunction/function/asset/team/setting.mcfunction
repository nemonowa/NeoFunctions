# 命名：4_team
# 説明：ワールドセッティング
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:asset/team/setting


# 内容
tellraw @a[gamemode=creative] {"text":"Ready! > asset/team/setting"}

# team
##add
team add red
team add aqua
team add blue
team add green
team add gray

team add dark_red
team add dark_aqua
team add dark_blue
team add dark_green
team add dark_purple
team add dark_gray

team add light_purple
team add yellow
team add gold
team add black
team add white

team add elite
team add boss
team add king

## team modify color
team modify red color red
team modify aqua color aqua
team modify blue color blue
team modify green color green
team modify gray color gray
team modify dark_red color dark_red
team modify dark_aqua color dark_aqua
team modify dark_blue color dark_blue
team modify dark_green color dark_green
team modify dark_purple color dark_purple
team modify dark_gray color dark_gray
team modify light_purple color light_purple
team modify yellow color yellow
team modify gold color gold
team modify black color black
team modify white color white

team modify elite color dark_red
team modify boss color dark_red
team modify king color dark_red

team modify elite friendlyFire false
team modify boss friendlyFire false
team modify king friendlyFire false

#prefix
team modify white prefix "⚝"
team modify black prefix "⚔"

team modify elite prefix "§k⇞§r "
team modify elite suffix " §k⇞§r"
team modify boss prefix "§k⇞⇞§r "
team modify boss suffix " §k⇞⇞§r"
team modify king prefix "§k⇞⇞⇞§r "
team modify king suffix " §k⇞⇞⇞§r"

#white プレイヤー
team modify white friendlyFire false
team modify white collisionRule pushOwnTeam
team modify white nametagVisibility always
team modify white seeFriendlyInvisibles true
team modify white deathMessageVisibility always
team modify white nametagVisibility always

#red enemy
team modify red friendlyFire true
team modify red collisionRule always
team modify blue collisionRule never

# 初期化時の参加
team join white @a[team=]
team join blue 0-0-0-0-0
team join light_purple 0-0-0-0-1

#ビリー
team join green a8428012-9dc7-4f66-b217-beb9c1df59a4
#シエラ
team join green 6a7001f6-8804-4eee-bb6a-9a9939c6e790
#ニール
team join green 9a38acb0-534d-4305-99c3-8545720c66c3

