# 命名：resourcepack
# 説明：この区画は「進捗タブ：異空の並行世界-NEXUS-」に対応しています。各部屋の看板をクリックして一章の全進捗を達成してください！
# >/execute in neodimension:nexus run tp @s 1281.93 110.00 1304.52 -91.00 28.48
# =/function neofunction:asset/tellraw/url-resourcepack


# 内容
tellraw @s [{"text":"ResourcePack > Ready!! (v1.0.0)","color":"yellow",hover_event:{"action":"show_text","value":[{"text":"click"}]},click_event:{"action":"open_url",url:"https://github.com/nemonowa"}},{"text":"\nCheck & Download latest version for here!","underlined":true}]


