# 命名：99
# 説明：クエスト個別タグ付与&重複受注検知
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/tag/101

#内容
# もし 誰かがfroggame を持っていれば → 返金処理 →処理終了
execute if entity @a[tag=froggame] run tag @s add duplicate
execute if entity @s[tag=froggame] run tag @s add refundfroggame
execute if entity @s[tag=froggame] run return run function neofunction:asset/event/froggame/refund

# もし ↑条件に満たなければ → 正常受注
tellraw @a [{"text":"<"},{"text":"レオン・グレイ","obfuscated":false,"italic":false,"underlined":false,"strikethrough":false,"bold":true},{"text":"> 「対カエル戦闘演習が始まるぞ。」\n"},{"text":"✔ 参加","color":"green",hover_event:{"action":"show_text","value":[{"text":"Go!!"}]},click_event:{"action":"run_command",command:"/trigger code set 55556"}}]

tag @s add froggame

#スタート演出へ
function neofunction:asset/event/froggame/readyup
