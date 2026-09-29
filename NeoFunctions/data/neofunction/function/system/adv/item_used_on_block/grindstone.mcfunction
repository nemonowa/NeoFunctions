# 命名：grindstone
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:item_used_on_block/.all
# =/function neofunction:system/adv/item_used_on_block/grindstone

## 内容
tellraw @a [{"text":"<まもる君> 砥石は使用はできないよ！\n","color":"dark_red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ルール違反が検知されました。"}]}},{"selector":"@s"},{"text":"くん...それは('ω'乂)ﾀﾞﾒｰ"}]

# ネクサスに強制送還
function neofunction:system/pos/.macro with storage pos:24
scoreboard players remove @s SP 100

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:item_used_on_block/grindstone