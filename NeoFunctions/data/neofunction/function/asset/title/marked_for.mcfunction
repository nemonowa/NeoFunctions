# 命名：marked_for
# 説明：
# >/function neofunction:asset/title/marked
# =/function neofunction:asset/title/marked_for

$execute if entity @s[tag=pos$(i)] as @p[advancements={neoadvancement:2/$(i)=true}] run function neofunction:asset/tellraw/gonexus
$execute if entity @s[tag=pos$(i)] as @p[advancements={neoadvancement:2/$(i)=false}] run tellraw @s [{"text":"<",hover_event:{"action":"show_text","value":[{"text":"インベントリ左上から取り出したアイテムを徽章形態に変形させアンカーポイントで格納能力「存在解析」を使用する。"}]}},{"selector":"0-0-0-0-1"},{"text":"> 未解析の"},{"text":"アンカーポイント","color":"dark_aqua","bold":true,"underlined":true},{"text":"を観測しました。この座標にアンカーを配置すると"},{"bold":true,"color":"#00AAAA","italic":false,"text":">"},{"color":"#0B8EBD","text":"> "},{"color":"#1672D0","text":"N"},{"color":"#2155E3","text":"E"},{"color":"#322BFF","text":"X"},{"color":"#2155E3","text":"U"},{"color":"#1672D0","text":"S "},{"color":"#0B8EBD","text":"<"},{"color":"#00AAAA","text":"<"},{"text":"との自由な巡航が可能となります。"},{"text":"over.","color":"light_purple"}]
