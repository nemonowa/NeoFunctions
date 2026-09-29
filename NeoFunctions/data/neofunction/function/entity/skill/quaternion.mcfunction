# 命名：quaternion
# 説明：（説明未記載）
# >/function neofunction:entity/skill/superdisplay
# =/function neofunction:entity/skill/quaternion

# q = (#CalcA,#CalcB,#CalcC,#CalcD)
# p = (#CalcX,#CalcY,#CalcZ,0)
# q・p=(#CalcA_,#CalcB_,#CalcC_,#CalcD_)とする
# 以下変数名の#Calcを省略
# (A_,B_,C_,D_) = (D(X,Y,Z)+(BZ-CY,CX-AZ,AY-BX),-AX-BY-CZ)
# (A_,B_,C_,D_) = (DX+BZ-CY,DY+CX-AZ,DZ+AY-BX,-AX-BY-CZ)

# A_の計算

scoreboard players operation #CalcDX temp = #CalcD temp
scoreboard players operation #CalcDX temp *= #CalcX temp

scoreboard players operation #CalcBZ temp = #CalcB temp
scoreboard players operation #CalcBZ temp *= #CalcZ temp

scoreboard players operation #CalcCY temp = #CalcC temp
scoreboard players operation #CalcCY temp *= #CalcY temp

scoreboard players operation #CalcA_ temp = #CalcDX temp
scoreboard players operation #CalcA_ temp += #CalcBZ temp
scoreboard players operation #CalcA_ temp -= #CalcCY temp

# B_の計算

scoreboard players operation #CalcDY temp = #CalcD temp
scoreboard players operation #CalcDY temp *= #CalcY temp

scoreboard players operation #CalcCX temp = #CalcC temp
scoreboard players operation #CalcCX temp *= #CalcX temp

scoreboard players operation #CalcAZ temp = #CalcA temp
scoreboard players operation #CalcAZ temp *= #CalcZ temp

scoreboard players operation #CalcB_ temp = #CalcDY temp
scoreboard players operation #CalcB_ temp += #CalcCX temp
scoreboard players operation #CalcB_ temp -= #CalcAZ temp

# C_の計算

scoreboard players operation #CalcDZ temp = #CalcD temp
scoreboard players operation #CalcDZ temp *= #CalcZ temp

scoreboard players operation #CalcAY temp = #CalcA temp
scoreboard players operation #CalcAY temp *= #CalcY temp

scoreboard players operation #CalcBX temp = #CalcB temp
scoreboard players operation #CalcBX temp *= #CalcX temp

scoreboard players operation #CalcC_ temp = #CalcDZ temp
scoreboard players operation #CalcC_ temp += #CalcAY temp
scoreboard players operation #CalcC_ temp -= #CalcBX temp

# D_の計算

scoreboard players operation #CalcAX temp = #CalcA temp
scoreboard players operation #CalcAX temp *= #CalcX temp

scoreboard players operation #CalcBY temp = #CalcB temp
scoreboard players operation #CalcBY temp *= #CalcY temp

scoreboard players operation #CalcCZ temp = #CalcC temp
scoreboard players operation #CalcCZ temp *= #CalcZ temp

scoreboard players operation #CalcD_ temp = #CalcAX temp
scoreboard players operation #CalcD_ temp *= $-1 const
scoreboard players operation #CalcD_ temp -= #CalcBY temp
scoreboard players operation #CalcD_ temp -= #CalcCZ temp

# 二次なので一回割る
scoreboard players operation #CalcA_ temp /= $1000 const
scoreboard players operation #CalcB_ temp /= $1000 const
scoreboard players operation #CalcC_ temp /= $1000 const
scoreboard players operation #CalcD_ temp /= $1000 const


# 以下入力のA~Cの符号を反転したものとして記述する
# q・p = (A_,B_,C_,D_)
# q* = (A,B,C,D)
# q・p・q* = (X_,Y_,Z_,?)
# (X_,Y_,Z_) = D_(A,B,C)+D(A_,B_,C_)+(B_C-C_B,C_A-A_C,A_B-B_A)
# (X_,Y_,Z_) = (D_A+DA_+B_C-C_B , D_B+DB_+C_A-A_C , D_C+DC_+A_B-B_A)

scoreboard players operation #CalcA temp *= $-1 const
scoreboard players operation #CalcB temp *= $-1 const
scoreboard players operation #CalcC temp *= $-1 const

# X_の計算

scoreboard players operation #CalcD_A temp = #CalcD_ temp
scoreboard players operation #CalcD_A temp *= #CalcA temp

scoreboard players operation #CalcDA_ temp = #CalcD temp
scoreboard players operation #CalcDA_ temp *= #CalcA_ temp

scoreboard players operation #CalcB_C temp = #CalcB_ temp
scoreboard players operation #CalcB_C temp *= #CalcC temp

scoreboard players operation #CalcC_B temp = #CalcC_ temp
scoreboard players operation #CalcC_B temp *= #CalcB temp

scoreboard players operation #CalcX_ temp = #CalcD_A temp
scoreboard players operation #CalcX_ temp += #CalcDA_ temp
scoreboard players operation #CalcX_ temp += #CalcB_C temp
scoreboard players operation #CalcX_ temp -= #CalcC_B temp

# Y_の計算

scoreboard players operation #CalcD_B temp = #CalcD_ temp
scoreboard players operation #CalcD_B temp *= #CalcB temp

scoreboard players operation #CalcDB_ temp = #CalcD temp
scoreboard players operation #CalcDB_ temp *= #CalcB_ temp

scoreboard players operation #CalcC_A temp = #CalcC_ temp
scoreboard players operation #CalcC_A temp *= #CalcA temp

scoreboard players operation #CalcA_C temp = #CalcA_ temp
scoreboard players operation #CalcA_C temp *= #CalcC temp

scoreboard players operation #CalcY_ temp = #CalcD_B temp
scoreboard players operation #CalcY_ temp += #CalcDB_ temp
scoreboard players operation #CalcY_ temp += #CalcC_A temp
scoreboard players operation #CalcY_ temp -= #CalcA_C temp

# Z_の計算

scoreboard players operation #CalcD_C temp = #CalcD_ temp
scoreboard players operation #CalcD_C temp *= #CalcC temp

scoreboard players operation #CalcDC_ temp = #CalcD temp
scoreboard players operation #CalcDC_ temp *= #CalcC_ temp

scoreboard players operation #CalcA_B temp = #CalcA_ temp
scoreboard players operation #CalcA_B temp *= #CalcB temp

scoreboard players operation #CalcB_A temp = #CalcB_ temp
scoreboard players operation #CalcB_A temp *= #CalcA temp

scoreboard players operation #CalcZ_ temp = #CalcD_C temp
scoreboard players operation #CalcZ_ temp += #CalcDC_ temp
scoreboard players operation #CalcZ_ temp += #CalcA_B temp
scoreboard players operation #CalcZ_ temp -= #CalcB_A temp

scoreboard players operation #CalcX_ temp /= $1000 const
scoreboard players operation #CalcY_ temp /= $1000 const
scoreboard players operation #CalcZ_ temp /= $1000 const

#tellraw @p [{"text":"A_： "},{"score": {"name": "#CalcA_","objective": "temp"}}]
#tellraw @p [{"text":"D_： "},{"score": {"name": "#CalcD_","objective": "temp"}}]
#tellraw @p [{"text":"A： "},{"score": {"name": "#CalcA","objective": "temp"}}]
#tellraw @p [{"text":"D： "},{"score": {"name": "#CalcD","objective": "temp"}}]
#tellraw @p [{"text":"B_： "},{"score": {"name": "#CalcB_","objective": "temp"}}]
#tellraw @p [{"text":"C_： "},{"score": {"name": "#CalcC_","objective": "temp"}}]