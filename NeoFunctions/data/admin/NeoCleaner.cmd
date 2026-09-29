:: 命名：NeoCleaner
:: 説明：不要な.mcaファイルを削除するスクリプト（r.X.Y.mca)が0~7ではないものを削除
:: Copyright © 2010-2027 SoraFlete. All Rights Reserved.


@echo off
chcp 65001 >nul
echo 注意：続行すると設定されたファイルを不可逆に削除します。
pause 

setlocal enabledelayedexpansion

for %%f in (r.*.*.mca) do (
    set "filename=%%~nf"
    :: r.x.y の形式を分割
    for /f "tokens=2,3 delims=." %%a in ("!filename!") do (
        set /a X=%%a
        set /a Y=%%b

        :: 0～7の範囲に両方入っていなければ削除
        if !X! LSS 0 (
            del "%%f"
        ) else if !X! GTR 7 (
            del "%%f"
        ) else if !Y! LSS 0 (
            del "%%f"
        ) else if !Y! GTR 7 (
            del "%%f"
        )
    )
)

endlocal

echo 成功：ワールドは最適化されました。
