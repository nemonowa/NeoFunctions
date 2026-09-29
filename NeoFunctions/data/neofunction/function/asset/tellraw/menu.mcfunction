# 命名：=/function neofunction:asset/tellraw/menu
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381332171423482039
# >/function neofunction:entity/.spawn/hp/item/cmd/50
# =/function neofunction:asset/tellraw/menu

function neofunction:asset/name/get
# 説明：メインメニュー
tellraw @s {"text":"—————————<< メインメニュー >>—————————","color":"gold","bold":true,"italic":false}

tellraw @s [{"text":"異名：","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：旅での特殊な活躍や偉業を記録する称号であり、艦内での「通り名」。プレフィックスとサフィックスで構成され、所持している異名の中から自由にカスタムできる。\n"},{"text":"機能：クリックで異名を変更する。","color":"gold"}]},click_event:{"action":"run_command",command:"/trigger code set 8"}},{"nbt":"name","storage":"neofunction:name","interpret":true,click_event:{"action":"run_command",command:"/trigger code set 8"}}]

tellraw @s [{"text":"真名：","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：貴官らは何者であるか示す一意のID。中枢にかかわる高位ロールになるほど名前の赤色が濃く見えるのだとか...\n"},{"text":"機能：クリックで名乗りをあげる（消費SP4）","color":"gold"}]},click_event:{"action":"run_command",command:"/trigger code set 2"}},{"selector":"@s",hover_event:{"action":"show_text","value":[{"text":"","color":"gold"}]}}]

tellraw @s [{"text":"位階：","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"世界観：「願いの強さ」が力に直結する世界。\n","color":"green"},{"text":"説明：ポープスター(ネザースター)は冀求力を強化するキボウノカケラであり、この世界の経験値である。インベントリに入れることで獲得、加算され、死んでも失われない「レベル」として蓄積される。\n","color":"white"},{"text":"機能：クリックで詳細なステータスを確認する（消費SP8）","color":"gold"}]},click_event:{"action":"run_command",command:"/trigger code set 330"}},{"text":"Lv.",hover_event:{"action":"show_text","value":[{"text":"説明：レベルは強さの指標であり、レベルアップすると基礎ステータスは向上し、スキルの習得枠と獲得に必要な「スキルポイント」などを得る。スキルはレベルと同じ数まで習得可能で使用可能なスキルポイントはtabから確認可能！"}]}},{"score":{"name":"@s","objective":"LVL"},"color":"dark_purple"},{"text":" HP.",hover_event:{"action":"show_text","value":[{"text":"説明：ステータスはレベルとともに上昇する。"}]}},{"score":{"name":"@s","objective":"HPmax"},"color":"light_purple"},{"text":" SP.",hover_event:{"action":"show_text","value":[{"text":"説明：願いを叶える力の本質。スキルを行使するためのリソース。冀求力(ききゅうりょく)は「願いの強さ」の指標であり、ソウル、マナ、オーラ、スターホープ、気、魔力など様々に呼ばれるが、要は「理想を実現する為に冀(こいねが)う想いの強さ」であり、「願望への想い」や「覚悟の純度」が強いほど強くなる。"}]}},{"score":{"name":"@s","objective":"SP"},"color":"aqua"}]

tellraw @s [{"text":">> スキルメモリーを「","color":"yellow",click_event:{"action":"run_command",command:"/trigger code set 13"}},{"text":"解放","color":"dark_aqua","underlined":true,"bold":true},{"text":"」する"}]

function neofunction:asset/skill/.setting

tellraw @s [{"text":">> ネクサスへ「","color":"yellow",click_event:{"action":"run_command",command:"/trigger code set 333"}},{"text":"転移要請","color":"dark_aqua","underlined":true,"bold":true},{"text":"」する"}]

tellraw @s {"text":"————————————————————————————————————","color":"gold","bold":true,"italic":false}



# tellraw @s [{"text":"異名：","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：旅での特殊な活躍や偉業を記録する称号であり、艦内での「通り名」。プレフィックスとサフィックスで構成され、所持している異名の中から自由にカスタムできる。\n"},{"text":"機能：クリックで異名を変更する。","color":"gold"}]},click_event:{"action":"run_command",command:"/trigger code set 8"}},{"text":"漂流の異邦人","color":"#C3D825",hover_event:{"action":"show_text","value":[{"text":"説明：豊穣の大自然島 -CerestaFesta- に流れ着いた次の祝祭を担う者たち。彼らは未知と魔法にあふれるセレスタにいざなわれ、やがて「祝祭」の意味を知る。"}]}}]