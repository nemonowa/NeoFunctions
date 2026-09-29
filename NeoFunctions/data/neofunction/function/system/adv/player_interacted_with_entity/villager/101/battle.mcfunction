# 命名：battle
# 説明：特定条件下で戦えるようにしたい
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/101/battle


## 分岐：戦闘（開始（（
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「決闘か！これだから浜辺の頭領はやめられねぇ。」"}]

## 分岐：戦闘（ビリーを撃破
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「...強くなったな。最高の恩返しじゃねえか。」"}]

## 分岐：戦闘（ビリーに敗北
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「もっと強くなってまたかかってこい。もし勝てたら俺のもんは何でもくれてやる。特に頭領はいいぞ、こうして面倒見た奴らといつか戦える。」"}]
