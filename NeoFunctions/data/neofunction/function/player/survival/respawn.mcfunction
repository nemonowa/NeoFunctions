# 命名：respawn
# 説明：詰み防止、ワールド正常化
# 説明：復活直後一回
# >/function neofunction:entity/tick
# =/function neofunction:player/survival/respawn


# HC対策
gamerule spectators_generate_chunks true

# 内容
function neofunction:system/music/finish
execute if score @s SPmax matches 50.. run scoreboard players set @s SP 50
function neofunction:player/attribute/lvl
function neofunction:system/pos/.macro with storage pos:63

# 通知
#tellraw @s {"text":"烈海王！復活ｯｯｯ！",click_event:{"action":"run_command",command:"/trigger kill"},hover_event:{"action":"show_text",value:"詰み防止の自決"}}
#title @s actionbar [{"text":"復活まであと"},{"text":"5","bold":true},{"text":"秒"}]

#リスポーン時にtipsを表示
trigger tip

execute if entity @s[tag=froggame] run function neofunction:asset/event/froggame/respawn

# 死亡回数
tellraw @s[scores={deathCount=1}] {"text":"<深淵様> 「来タカ...。」","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=10}] {"text":" 「・・・そのかおは・おまえ１０かい・れんぞくでやられたな？」","bold":false,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"おめでとう。 ついに　おおだい とっぱだ。  おまえの　ともだちを ぜんいん　よんで パーティしようぜ。  パイと　ホットドッグで おいわいだ。  ・・・と　おもったが・・・  おまえ　ともだち いなかったな。"}]}}
tellraw @s[scores={deathCount=25}] {"text":"<深淵様> 「来タカ...。」","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=50}] {"text":"<深淵様> 「50デスだ。一応言っておくが、無策なゾンビ特攻はNEXUSの戦い方じゃないぜ？」","color":"dark_purple","bold":false,"italic":false}

tellraw @s[scores={deathCount=100}] {"text":"<深淵様> 「その顔おまえ100かi..」","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=100}] {"text":"<深淵様> まさか(ಠﭛಠ)w","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=100}] {"text":"<深淵様> 「今更NEXUSerが死を恐るとでも思ったかい。」","color":"dark_purple","bold":false,"italic":false}

tellraw @s[scores={deathCount=200}] [{"text":"死亡回数が一定の回数になりましたので【ジャッジメントを初期地点に召喚】が実行されました。","color":"dark_red","bold":true,"italic":false},{"text":"...とか言ったら驚く？w","color":"black"}]
tellraw @s[scores={deathCount=500}] {"text":"500death突破、防具に軽減エンチャが合計20になるようにしてから、戦うといいかも。","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=1000}] [{"text":"<","bold":false,"italic":false},{"selector":"@s","color":"white"},{"text":"> 「もう。何も怖くない。」"}]
tellraw @s[scores={deathCount=1569}] {"text":"1569回。まあ、楽死んでたらこれくらいは死ぬよね。","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=2000}] {"text":"もしかして苦戦してくれてる？うれしw","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=5000}] {"text":"5000death","color":"dark_purple","bold":false,"italic":false}
tellraw @s[scores={deathCount=10000}] {"text":"1万回死んだ私。貴様わざとだろwいいか？これ以上のメッセージは設定しないから、無駄に殺してあげるなよ。","color":"dark_purple","bold":false,"italic":false}


# スペクテイター処理
#effect give @s minecraft:hunger 5 250 true
#effect give @s minecraft:bad_omen 5 3

# 再使用
scoreboard players set @s survival 0
scoreboard players set @s death 0
advancement revoke @s only neofunction:tick/entity_scores/survival/respawn