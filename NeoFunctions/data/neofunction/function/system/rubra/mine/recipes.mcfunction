# 命名：recipes
# 説明：星鍛冶の金床の強化の表（storage neofunction:rubra forge.r）。キーは強化前の道具の custom_model_data の番号（文字列）
# 説明：1 つの行：to（強化後の番号）、m1・n1（素材 1 の番号と数）、m2・n2（素材 2。無いときは 0・0）、need（足りないときに見せる文）
# 説明：今後の防具・武器も、ここに行を足すだけで同じ金床で強化できる。表を変えたら v を上げる（use の判定も同じ数に）
# 実行条件：どこでも
# >/function neofunction:system/rubra/mine/forge
# =/function neofunction:system/rubra/mine/recipes

# 内容
data modify storage neofunction:rubra forge set value {v:2,id:0,r:{}}
data modify storage neofunction:rubra forge.r."1924" set value {to:1925,m1:1927,n1:32,m2:0,n2:0,need:"紅鉄の原石 ×32"}
data modify storage neofunction:rubra forge.r."1925" set value {to:1926,m1:1927,n1:32,m2:1928,n2:16,need:"紅鉄の原石 ×32、星鉄の原石 ×16"}
