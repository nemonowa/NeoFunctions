# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/1


# 内容

data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「あら、旅人さん」"}]',Delay:0}
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「ようこそ、シェーラの碧天牧場へ」"}]',Delay:0}
# 【変更：2026-09-27 26.3対応】26.3 の SNBT は 040 を数値として読もうとしてエラーになるため、1.20.4 と同じ文字列 "040" にする
data modify storage neofunction:main_story Talks append value {Text:'[{"text":"<"},{"selector":"@e[nbt={DeathLootTable:\\"neofunction:asset/summon/102\\"},limit=1]"},{"text":">"},{"text":"「私はこの牧場を預かるシェーラ。遠くから来たようね」"}]',Delay:"040",Sound:{Sound:"entity.villager.yes",Pitch:0.8}}
