# 命名：tip
# 説明：トリガー
# 説明：@a[scores={status=1..}] マイナス不可！
# >/function neofunction:system/1_detection
# =/function neofunction:system/trigger/tip


# 内容
execute as @s run playsound minecraft:block.enchantment_table.use record @a[distance=..8] ~ ~ ~ 1 0.6 1
execute as @s run tellraw @s[scores={tip=1}] [{"text":"> Random-TIP","color":"dark_aqua",hover_event:{"action":"show_text","value":[{"text":"有用な情報をランダムで表示します。 \n"},{"text":"/trigger tip","color":"aqua"},{"text":""}]},click_event:{"action":"run_command",command:"/trigger tip"}}]

execute as @s run execute store result score @s[scores={tip=1}] tip run random value 237..266

tellraw @s[scores={tip=237}] [{"text":"","color":"aqua"},{"text":"異空の火器\n","bold":true,"underlined":true},{"text":"異空の火器を元の形に戻したい場合は、一度スキルポケットに戻してみよう。"}]
tellraw @s[scores={tip=238}] [{"text":"","color":"aqua"},{"text":"異空の火器\n","bold":true,"underlined":true},{"text":"敵のHPを知りたければ、異空の火器で切ってみればいい。但し、スポナーを壊せる形態でだ。因みに手に持ってしゃがめばスポナーと敵の探知も出来る。"}]
tellraw @s[scores={tip=239}] [{"text":"","color":"aqua"},{"text":"転移要請\n","bold":true,"underlined":true},{"text":"敵が近くに居る時は転移要請は不可能だ。(味方以外の)観測者が居ない場所まで移動しよう。"}]
tellraw @s[scores={tip=240}] [{"text":"","color":"aqua"},{"text":"SPの回復\n","bold":true,"underlined":true},{"text":"SPは満腹度が半分以上の時に自動回復する。何かしらのポーションを飲んだり、水分補給をすることでより早く回復する。また、ウィルポーションやエリクサーなどのMP回復薬を使ったり、睡眠や精神の泉などでも回復する。"}]
tellraw @s[scores={tip=241}] [{"text":"","color":"aqua"},{"text":"経験値\n","bold":true,"underlined":true},{"text":"アイテムチェストを開けてこれは要らないと思っても、取り合えずインベントリに一瞬入れてみるべきだ。物によっては進捗、経験値になる。拾うものすべてが、君の価値だ。"}]
tellraw @s[scores={tip=242}] [{"text":"","color":"aqua"},{"text":"設定\n","bold":true,"underlined":true},{"text":"スポナーを壊しても元に戻る場合は、パソコンのメモリが不足している可能性がある。メモリの割り当てはなるべく増やそう。"}]
tellraw @s[scores={tip=243}] [{"text":"","color":"aqua"},{"text":"描画距離\n","bold":true,"underlined":true},{"text":"画面がかくつくと思ったら描画距離は短くしてもいいが、演算距離は8チャンクは必要だ。"}]
tellraw @s[scores={tip=244}] [{"text":"","color":"aqua"},{"text":"異空の計器\n","bold":true,"underlined":true},{"text":"異空の計器はオフハンドに持ってシフトすれば、貴方の進むべき道を示す。"}]
tellraw @s[scores={tip=245}] [{"text":"","color":"aqua"},{"text":"adv装備\n","bold":true,"underlined":true},{"text":"アドベンチャーだろうと、鶴橋で壊せるものは多い。そう、スポナー以外にも…"}]
tellraw @s[scores={tip=246}] [{"text":"","color":"aqua"},{"text":"ベリー\n","bold":true,"underlined":true},{"text":"ベリーは好きな場所に植えるといい。君だけの農園を作れ。"}]
tellraw @s[scores={tip=247}] [{"text":"","color":"aqua"},{"text":"始めに\n","bold":true,"underlined":true},{"text":"始めにやることが分からなかったら、野営地で一番偉い人の所へ行こう。"}]
tellraw @s[scores={tip=248}] [{"text":"","color":"aqua"},{"text":"レベル\n","bold":true,"underlined":true},{"text":"レベルを上げたいなら、色々なことをやろう。どんどんランダムチェストを開けよう。"}]
tellraw @s[scores={tip=249}] [{"text":"","color":"aqua"},{"text":"マモン\n","bold":true,"underlined":true},{"text":"ある1種の貨幣を1スタック(64枚)まとめて投げ捨てると上位の貨幣と交換できます。"}]
tellraw @s[scores={tip=250}] [{"text":"","color":"aqua"},{"text":"レアリティ\n","bold":true,"underlined":true},{"text":"固有アイテムのレアリティがわからない場合は投げ捨ててみてください。再度レアリティが付与されます。"}]
tellraw @s[scores={tip=251}] [{"text":"","color":"aqua"},{"text":"本当の効果\n","bold":true,"underlined":true},{"text":"ポーションやアイテムの本当の効果を知りたい？詳細を知りたいアイテムを投げ捨てて異空の徽章を手に持ってをシフトし、「存在解析」してみて下さい。"}]
tellraw @s[scores={tip=252}] [{"text":"","color":"aqua"},{"text":"詰んだ時\n","bold":true,"underlined":true},{"text":"ベッドから起きたら頭がブロックに埋まってた？2ブロック分の絶望に沈んだ？異空の計器を手に持ってシフトして「転移要請」か「/trigger kill」をして脱出できます。"}]
tellraw @s[scores={tip=253}] [{"text":"","color":"aqua"},{"text":"バックアップ\n","bold":true,"underlined":true},{"text":"バックアップは定期的にとりましょう！！！"}]
tellraw @s[scores={tip=254}] [{"text":"","color":"aqua"},{"text":"ゴミ箱\n","bold":true,"underlined":true},{"text":"いらないアイテムをもってスキルポケットを左クリックしてみて下さい。削除できます。ついでにそのレアリティーにあったスターシャードがもらえます。"}]
tellraw @s[scores={tip=255}] [{"text":"","color":"aqua"},{"text":"転移要請\n","bold":true,"underlined":true},{"text":"NEXUSの転移時に上を向くことで開放したワープポイント(アンカーポイント)にテレポートすることができます。"}]
tellraw @s[scores={tip=256}] [{"text":"","color":"aqua"},{"text":"スキル\n","bold":true,"underlined":true},{"text":"登録しているスキルを変更したいときは、インベントリを開いて、スキルポケットを投げてメインメニューを出してください。その後チャットでG-Skillなどをクリックすると、スキルが変更できます。"}]
tellraw @s[scores={tip=257}] [{"text":"","color":"aqua"},{"text":"スキルポケット\n","bold":true,"underlined":true},{"text":"スキルポケットの中身が空？左クリックすると中身が補充されます。"}]
tellraw @s[scores={tip=258}] [{"text":"","color":"aqua"},{"text":"異空の徽章\n","bold":true,"underlined":true},{"text":"異空の徽章を手に持ってワープポイント(アンカーポイント)の近くでシフトすると、そのポイントを開放することができます。"}]
tellraw @s[scores={tip=259}] [{"text":"","color":"aqua"},{"text":"SPの枯渇\n","bold":true,"underlined":true},{"text":"SPは精神力そのものであるため、酷使、減少し過ぎてしまうと精神が不安定になり、視界不良や鬱状態となる。"}]
tellraw @s[scores={tip=260}] [{"text":"","color":"aqua"},{"text":"🛌就寝\n","bold":true,"underlined":true},{"text":"ベッドで就寝することで、満腹度を消費してHPが完全回復できる。ただし寝ることで夜を越すことはできない。"}]
tellraw @s[scores={tip=261}] [{"text":"","color":"aqua"},{"text":"ソウル【SP】\n","bold":true,"underlined":true},{"text":"願いを叶える力の本質。スキルを行使するためのリソース。冀求力(ききゅうりょく)は「願いの強さ」の指標であり、ソウル、マナ、オーラ、スターホープ、気、魔力など様々に呼ばれるが、要は「理想を実現する為に冀(こいねが)う想いの強さ」であり、「願望への想い」や「覚悟の純度」が強いほど強くなる。"}]
tellraw @s[scores={tip=262}] [{"text":"","color":"aqua"},{"text":"ドロップ増化エンチャント\n","bold":true,"underlined":true},{"text":"ドロップ増加エンチャントが1レベル上がる毎にドロップする最大量が1増えた状態で抽選されるようになる。例：0~2個の腐肉を落とすゾンビ→泥増1で倒すと、ドロップが0~3になる多くのMOBのドロップ上限は5に設定されている "}]
tellraw @s[scores={tip=263}] [{"text":"","color":"aqua"},{"text":"レアリティの確認\n","bold":true,"underlined":true},{"text":"アイテムのレア度は一度地面に落とすと確認できる\nさらに詳細な効果やエンティティの脅威度を確認したいなら「存在解析」を使用しよう！"}]
tellraw @s[scores={tip=264}] [{"text":"","color":"aqua"},{"text":"属性ダメージ軽減について\n","bold":true,"underlined":true},{"text":"各種属性ダメージ軽減は、対象の属性からのダメージ軽減をレベル*8%獲得できるだけでなく、通常の○○耐性エンチャントと同じ効果も発生する。耐性の上限は80%である。\n火属性は火炎耐性、水属性は飛び道具耐性、風属性は爆発耐性、土属性は落下ダメージ耐性に対応している。"}]
tellraw @s[scores={tip=265}] [{"text":"","color":"aqua"},{"text":"敵の回復スキルについて\n","bold":true,"underlined":true},{"text":"敵が回復を開始すると、対象の周囲に緑色の✭パーティクルが数秒間発生します。詠唱中に任意の攻撃を命中させると回復は中断されます。回復を許すと戦闘が長引くため、優先して妨害しましょう。"}]
tellraw @s[scores={tip=266}] [{"text":"","color":"aqua"},{"text":"エンチャント\n","bold":true,"underlined":true},{"text":"一部のアイテムに付与されているエンチャントは演出・設定表現のためのものであり、実際のゲーム効果を持たない場合があります。（例：本来の対応装備以外に付与されたエンチャント）"}]


tellraw @s[scores={tip=404}] [{"text":"","color":"aqua"},{"text":"missingno\n","bold":true,"underlined":true},{"text":"あ？ねぇよそんなもん"}]

## 引き直し
scoreboard players set @s tip 0
scoreboard players enable @s tip
advancement revoke @s only neofunction:tick/entity_scores/trigger/tip
