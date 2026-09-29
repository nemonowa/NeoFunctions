# 命名：14
# 説明：ブロック設置
# >/function neofunction:entity/14
# =/function neofunction:asset/skill/14



# 内容
execute as @p[gamemode=adventure] run return run tellraw @s "このスキルはアドベンチャーモードで使用できない！"

effect give @s minecraft:levitation 1 6
execute at @s run summon falling_block ~ ~3 ~ {BlockState:{id:"minecraft:white_wool"},Glowing:1b,Time:1,Passengers:[{id:"minecraft:experience_orb",Glowing:1b,Health:0b,Passengers:[{id:"minecraft:falling_block",BlockState:{id:"minecraft:white_wool"},Glowing:1b,Time:1,Passengers:[{id:"minecraft:experience_orb",Glowing:1b,Health:0b,Passengers:[{id:"minecraft:falling_block",BlockState:{id:"minecraft:white_wool"},Glowing:1b,Time:1}]}]}]}]}

playsound minecraft:block.wool.place record @s ~ ~ ~ 2 0.6 0
# playsound minecraft:entity.bat.takeoff record @s ~ ~ ~ 2 0.6 0
particle minecraft:dust{color:[1,1,1],scale:1} ~ ~-0.5 ~ 2 0 2 0.1 60 force


# [ImportKey]: #NobwRALgngDgpmAXGGB7ANlA5qgdmAGjAFdiBLAEyTACYKB2ADgENGAGZgWlYDMA2TgBZBATjicARhQk9OImmwDMfBWwDGPNQEZCYXMwC2CZICxNQEuRgI30ABDqIxmAJ0MBnJODWpiuCEgVE1cN5wDm5gAG7M6MTG4AAeSGxEUAkAvilEThRkxK6IAKxEzhCOPoiJYHDo6GQwzsZabOUOqMUQxuUeDrjBSAVgAFbEBjBIWkQScABeZD1lRGTOAKJVNXWLAI7EkZgAyvYBVIg8kXXzzgBCUzMOG1tVUHvMB0jH6HVpBODQ8NRomDj4IikSjUAJwRQUCGyNgUHgSIR8RT0SSCNgiTj0PjMGhqFR5RRqCG6fRGajmaw0XT2JwGXLuTzeXwdQJtEKIcARKIxMDxOZgZJlD5gTLZXJ9IolBJESrVWr1RoZFrMNpSsCdbpsvqDYajcZXWblBbLWVrTbbB77OCHV6nMALS7TYK3c2PZ5HE5wNIAXSAA_3
# 多角形 2
particle end_rod ^0 ^ ^-5 0 0 0 0 1
particle end_rod ^0.23776 ^ ^-4.82725 0 0 0 0 1
particle end_rod ^0.47553 ^ ^-4.65451 0 0 0 0 1
particle end_rod ^0.71329 ^ ^-4.48176 0 0 0 0 1
particle end_rod ^0.95106 ^ ^-4.30902 0 0 0 0 1
particle end_rod ^1.18882 ^ ^-4.13627 0 0 0 0 1
particle end_rod ^1.42658 ^ ^-3.96353 0 0 0 0 1
particle end_rod ^1.66435 ^ ^-3.79078 0 0 0 0 1
particle end_rod ^1.90211 ^ ^-3.61803 0 0 0 0 1
particle end_rod ^2.13988 ^ ^-3.44529 0 0 0 0 1
particle end_rod ^2.37764 ^ ^-3.27254 0 0 0 0 1
particle end_rod ^2.61541 ^ ^-3.0998 0 0 0 0 1
particle end_rod ^2.85317 ^ ^-2.92705 0 0 0 0 1
particle end_rod ^3.09093 ^ ^-2.75431 0 0 0 0 1
particle end_rod ^3.3287 ^ ^-2.58156 0 0 0 0 1
particle end_rod ^3.56646 ^ ^-2.40881 0 0 0 0 1
particle end_rod ^3.80423 ^ ^-2.23607 0 0 0 0 1
particle end_rod ^4.04199 ^ ^-2.06332 0 0 0 0 1
particle end_rod ^4.27975 ^ ^-1.89058 0 0 0 0 1
particle end_rod ^4.51752 ^ ^-1.71783 0 0 0 0 1
particle end_rod ^4.75528 ^ ^-1.54508 0 0 0 0 1
particle end_rod ^4.66446 ^ ^-1.26558 0 0 0 0 1
particle end_rod ^4.57365 ^ ^-0.98607 0 0 0 0 1
particle end_rod ^4.48283 ^ ^-0.70656 0 0 0 0 1
particle end_rod ^4.39201 ^ ^-0.42705 0 0 0 0 1
particle end_rod ^4.30119 ^ ^-0.14754 0 0 0 0 1
particle end_rod ^4.21038 ^ ^0.13197 0 0 0 0 1
particle end_rod ^4.11956 ^ ^0.41147 0 0 0 0 1
particle end_rod ^4.02874 ^ ^0.69098 0 0 0 0 1
particle end_rod ^3.93792 ^ ^0.97049 0 0 0 0 1
particle end_rod ^3.8471 ^ ^1.25 0 0 0 0 1
particle end_rod ^3.75629 ^ ^1.52951 0 0 0 0 1
particle end_rod ^3.66547 ^ ^1.80902 0 0 0 0 1
particle end_rod ^3.57465 ^ ^2.08853 0 0 0 0 1
particle end_rod ^3.48383 ^ ^2.36803 0 0 0 0 1
particle end_rod ^3.39302 ^ ^2.64754 0 0 0 0 1
particle end_rod ^3.3022 ^ ^2.92705 0 0 0 0 1
particle end_rod ^3.21138 ^ ^3.20656 0 0 0 0 1
particle end_rod ^3.12056 ^ ^3.48607 0 0 0 0 1
particle end_rod ^3.02974 ^ ^3.76558 0 0 0 0 1
particle end_rod ^2.93893 ^ ^4.04508 0 0 0 0 1
particle end_rod ^2.64503 ^ ^4.04508 0 0 0 0 1
particle end_rod ^2.35114 ^ ^4.04508 0 0 0 0 1
particle end_rod ^2.05725 ^ ^4.04508 0 0 0 0 1
particle end_rod ^1.76336 ^ ^4.04508 0 0 0 0 1
particle end_rod ^1.46946 ^ ^4.04508 0 0 0 0 1
particle end_rod ^1.17557 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0.88168 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0.58779 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0.29389 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-0.29389 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-0.58779 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-0.88168 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-1.17557 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-1.46946 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-1.76336 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.05725 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.35114 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.64503 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.93893 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-3.02974 ^ ^3.76558 0 0 0 0 1
particle end_rod ^-3.12056 ^ ^3.48607 0 0 0 0 1
particle end_rod ^-3.21138 ^ ^3.20656 0 0 0 0 1
particle end_rod ^-3.3022 ^ ^2.92705 0 0 0 0 1
particle end_rod ^-3.39302 ^ ^2.64754 0 0 0 0 1
particle end_rod ^-3.48383 ^ ^2.36803 0 0 0 0 1
particle end_rod ^-3.57465 ^ ^2.08853 0 0 0 0 1
particle end_rod ^-3.66547 ^ ^1.80902 0 0 0 0 1
particle end_rod ^-3.75629 ^ ^1.52951 0 0 0 0 1
particle end_rod ^-3.8471 ^ ^1.25 0 0 0 0 1
particle end_rod ^-3.93792 ^ ^0.97049 0 0 0 0 1
particle end_rod ^-4.02874 ^ ^0.69098 0 0 0 0 1
particle end_rod ^-4.11956 ^ ^0.41147 0 0 0 0 1
particle end_rod ^-4.21038 ^ ^0.13197 0 0 0 0 1
particle end_rod ^-4.30119 ^ ^-0.14754 0 0 0 0 1
particle end_rod ^-4.39201 ^ ^-0.42705 0 0 0 0 1
particle end_rod ^-4.48283 ^ ^-0.70656 0 0 0 0 1
particle end_rod ^-4.57365 ^ ^-0.98607 0 0 0 0 1
particle end_rod ^-4.66446 ^ ^-1.26558 0 0 0 0 1
particle end_rod ^-4.75528 ^ ^-1.54508 0 0 0 0 1
particle end_rod ^-4.51752 ^ ^-1.71783 0 0 0 0 1
particle end_rod ^-4.27975 ^ ^-1.89058 0 0 0 0 1
particle end_rod ^-4.04199 ^ ^-2.06332 0 0 0 0 1
particle end_rod ^-3.80423 ^ ^-2.23607 0 0 0 0 1
particle end_rod ^-3.56646 ^ ^-2.40881 0 0 0 0 1
particle end_rod ^-3.3287 ^ ^-2.58156 0 0 0 0 1
particle end_rod ^-3.09093 ^ ^-2.75431 0 0 0 0 1
particle end_rod ^-2.85317 ^ ^-2.92705 0 0 0 0 1
particle end_rod ^-2.61541 ^ ^-3.0998 0 0 0 0 1
particle end_rod ^-2.37764 ^ ^-3.27254 0 0 0 0 1
particle end_rod ^-2.13988 ^ ^-3.44529 0 0 0 0 1
particle end_rod ^-1.90211 ^ ^-3.61803 0 0 0 0 1
particle end_rod ^-1.66435 ^ ^-3.79078 0 0 0 0 1
particle end_rod ^-1.42658 ^ ^-3.96353 0 0 0 0 1
particle end_rod ^-1.18882 ^ ^-4.13627 0 0 0 0 1
particle end_rod ^-0.95106 ^ ^-4.30902 0 0 0 0 1
particle end_rod ^-0.71329 ^ ^-4.48176 0 0 0 0 1
particle end_rod ^-0.47553 ^ ^-4.65451 0 0 0 0 1
particle end_rod ^-0.23776 ^ ^-4.82725 0 0 0 0 1
# 多角形 1
particle end_rod ^0 ^ ^-5 0 0 0 0 1
particle end_rod ^0.23776 ^ ^-4.82725 0 0 0 0 1
particle end_rod ^0.47553 ^ ^-4.65451 0 0 0 0 1
particle end_rod ^0.71329 ^ ^-4.48176 0 0 0 0 1
particle end_rod ^0.95106 ^ ^-4.30902 0 0 0 0 1
particle end_rod ^1.18882 ^ ^-4.13627 0 0 0 0 1
particle end_rod ^1.42658 ^ ^-3.96353 0 0 0 0 1
particle end_rod ^1.66435 ^ ^-3.79078 0 0 0 0 1
particle end_rod ^1.90211 ^ ^-3.61803 0 0 0 0 1
particle end_rod ^2.13988 ^ ^-3.44529 0 0 0 0 1
particle end_rod ^2.37764 ^ ^-3.27254 0 0 0 0 1
particle end_rod ^2.61541 ^ ^-3.0998 0 0 0 0 1
particle end_rod ^2.85317 ^ ^-2.92705 0 0 0 0 1
particle end_rod ^3.09093 ^ ^-2.75431 0 0 0 0 1
particle end_rod ^3.3287 ^ ^-2.58156 0 0 0 0 1
particle end_rod ^3.56646 ^ ^-2.40881 0 0 0 0 1
particle end_rod ^3.80423 ^ ^-2.23607 0 0 0 0 1
particle end_rod ^4.04199 ^ ^-2.06332 0 0 0 0 1
particle end_rod ^4.27975 ^ ^-1.89058 0 0 0 0 1
particle end_rod ^4.51752 ^ ^-1.71783 0 0 0 0 1
particle end_rod ^4.75528 ^ ^-1.54508 0 0 0 0 1
particle end_rod ^4.66446 ^ ^-1.26558 0 0 0 0 1
particle end_rod ^4.57365 ^ ^-0.98607 0 0 0 0 1
particle end_rod ^4.48283 ^ ^-0.70656 0 0 0 0 1
particle end_rod ^4.39201 ^ ^-0.42705 0 0 0 0 1
particle end_rod ^4.30119 ^ ^-0.14754 0 0 0 0 1
particle end_rod ^4.21038 ^ ^0.13197 0 0 0 0 1
particle end_rod ^4.11956 ^ ^0.41147 0 0 0 0 1
particle end_rod ^4.02874 ^ ^0.69098 0 0 0 0 1
particle end_rod ^3.93792 ^ ^0.97049 0 0 0 0 1
particle end_rod ^3.8471 ^ ^1.25 0 0 0 0 1
particle end_rod ^3.75629 ^ ^1.52951 0 0 0 0 1
particle end_rod ^3.66547 ^ ^1.80902 0 0 0 0 1
particle end_rod ^3.57465 ^ ^2.08853 0 0 0 0 1
particle end_rod ^3.48383 ^ ^2.36803 0 0 0 0 1
particle end_rod ^3.39302 ^ ^2.64754 0 0 0 0 1
particle end_rod ^3.3022 ^ ^2.92705 0 0 0 0 1
particle end_rod ^3.21138 ^ ^3.20656 0 0 0 0 1
particle end_rod ^3.12056 ^ ^3.48607 0 0 0 0 1
particle end_rod ^3.02974 ^ ^3.76558 0 0 0 0 1
particle end_rod ^2.93893 ^ ^4.04508 0 0 0 0 1
particle end_rod ^2.64503 ^ ^4.04508 0 0 0 0 1
particle end_rod ^2.35114 ^ ^4.04508 0 0 0 0 1
particle end_rod ^2.05725 ^ ^4.04508 0 0 0 0 1
particle end_rod ^1.76336 ^ ^4.04508 0 0 0 0 1
particle end_rod ^1.46946 ^ ^4.04508 0 0 0 0 1
particle end_rod ^1.17557 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0.88168 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0.58779 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0.29389 ^ ^4.04508 0 0 0 0 1
particle end_rod ^0 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-0.29389 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-0.58779 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-0.88168 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-1.17557 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-1.46946 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-1.76336 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.05725 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.35114 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.64503 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-2.93893 ^ ^4.04508 0 0 0 0 1
particle end_rod ^-3.02974 ^ ^3.76558 0 0 0 0 1
particle end_rod ^-3.12056 ^ ^3.48607 0 0 0 0 1
particle end_rod ^-3.21138 ^ ^3.20656 0 0 0 0 1
particle end_rod ^-3.3022 ^ ^2.92705 0 0 0 0 1
particle end_rod ^-3.39302 ^ ^2.64754 0 0 0 0 1
particle end_rod ^-3.48383 ^ ^2.36803 0 0 0 0 1
particle end_rod ^-3.57465 ^ ^2.08853 0 0 0 0 1
particle end_rod ^-3.66547 ^ ^1.80902 0 0 0 0 1
particle end_rod ^-3.75629 ^ ^1.52951 0 0 0 0 1
particle end_rod ^-3.8471 ^ ^1.25 0 0 0 0 1
particle end_rod ^-3.93792 ^ ^0.97049 0 0 0 0 1
particle end_rod ^-4.02874 ^ ^0.69098 0 0 0 0 1
particle end_rod ^-4.11956 ^ ^0.41147 0 0 0 0 1
particle end_rod ^-4.21038 ^ ^0.13197 0 0 0 0 1
particle end_rod ^-4.30119 ^ ^-0.14754 0 0 0 0 1
particle end_rod ^-4.39201 ^ ^-0.42705 0 0 0 0 1
particle end_rod ^-4.48283 ^ ^-0.70656 0 0 0 0 1
particle end_rod ^-4.57365 ^ ^-0.98607 0 0 0 0 1
particle end_rod ^-4.66446 ^ ^-1.26558 0 0 0 0 1
particle end_rod ^-4.75528 ^ ^-1.54508 0 0 0 0 1
particle end_rod ^-4.51752 ^ ^-1.71783 0 0 0 0 1
particle end_rod ^-4.27975 ^ ^-1.89058 0 0 0 0 1
particle end_rod ^-4.04199 ^ ^-2.06332 0 0 0 0 1
particle end_rod ^-3.80423 ^ ^-2.23607 0 0 0 0 1
particle end_rod ^-3.56646 ^ ^-2.40881 0 0 0 0 1
particle end_rod ^-3.3287 ^ ^-2.58156 0 0 0 0 1
particle end_rod ^-3.09093 ^ ^-2.75431 0 0 0 0 1
particle end_rod ^-2.85317 ^ ^-2.92705 0 0 0 0 1
particle end_rod ^-2.61541 ^ ^-3.0998 0 0 0 0 1
particle end_rod ^-2.37764 ^ ^-3.27254 0 0 0 0 1
particle end_rod ^-2.13988 ^ ^-3.44529 0 0 0 0 1
particle end_rod ^-1.90211 ^ ^-3.61803 0 0 0 0 1
particle end_rod ^-1.66435 ^ ^-3.79078 0 0 0 0 1
particle end_rod ^-1.42658 ^ ^-3.96353 0 0 0 0 1
particle end_rod ^-1.18882 ^ ^-4.13627 0 0 0 0 1
particle end_rod ^-0.95106 ^ ^-4.30902 0 0 0 0 1
particle end_rod ^-0.71329 ^ ^-4.48176 0 0 0 0 1
particle end_rod ^-0.47553 ^ ^-4.65451 0 0 0 0 1
particle end_rod ^-0.23776 ^ ^-4.82725 0 0 0 0 1

# 消費SP
scoreboard players remove @s SP 16
