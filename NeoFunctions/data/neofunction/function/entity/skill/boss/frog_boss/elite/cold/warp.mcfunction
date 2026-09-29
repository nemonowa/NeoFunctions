# 命名：warp
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/cold/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/cold/warp

function neofunction:entity/skill/motion/high_speed
tellraw @a {"translate":"＊%1$s は%2$sした！","with": [{"selector": "@s"},{"text":"カエルジャンプ",hover_event: {"action": "show_text",value: {"text":"とてつもない跳躍で近くのプレイヤーのもとへワープする"}},"bold": true}]}