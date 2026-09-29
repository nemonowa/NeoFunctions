:: 命名：WorldRebooter
:: 説明：ワールドの初期化処理をワンクリックで終わらせるためのショートカット。
:: 不要のデータは削除しよう。軽量化や最適化のためのマナーだよ。
:: ワールド直下に入れて実行すると以下を削除
:: admin
:: advancements
:: playerdata
:: stats
:: level.dat_old
:: data\scoreboard.dat


@echo off
setlocal

:: カレントディレクトリを基準
:: set "BASE_DIR=%cd%"
set "BASE_DIR=%cd%"
pushd "%BASE_DIR%" >nul
set "BASE_DIR=%cd%"
popd >nul


:: チェック
echo --------------------------------------------------------------------------------------------------
echo 命名：NeoRebooter
echo 説明：ワールドの初期化シーケンスの起動を確認。
echo この操作ではディレクトリadvancements, playerdata, stats とフォルダlevel.dat_old, data\scoreboard.dat を削除します。
echo この操作を階層 "%BASE_DIR%" に対して実行しますか？
echo --------------------------------------------------------------------------------------------------
timeout /t 30


:: フォルダ：advancements, playerdata, stats を削除
for %%F in (advancements playerdata stats) do (
    if exist "%BASE_DIR%\%%F" (
        rd /s /q "%BASE_DIR%\%%F"
    )
)

:: ファイル：level.dat_old を削除
if exist "%BASE_DIR%\level.dat_old" (
    del /f /q "%BASE_DIR%\level.dat_old"
)

:: ディレクトリ内部のファイル：data\scoreboard.dat を削除
if exist "%BASE_DIR%\data\scoreboard.dat" (
    del /f /q "%BASE_DIR%\data\scoreboard.dat"
)

echo 成功：操作が正常に完了しました！
echo 確認：続けて制作者用ファイル群を削除しますか？(30秒後に実行します)
timeout /t 30


:: "admin" という名前のファイル（拡張子問わず）を削除
for /r "%BASE_DIR%" %%f in (*) do (
    if /i "%%~nf"=="admin" (
        del /f /q "%%f" 2>nul
    )
)

:: "admin" という名前のディレクトリを削除
for /d /r "%BASE_DIR%" %%d in (*) do (
    if /i "%%~nxd"=="admin" (
        rd /s /q "%%d" 2>nul
    )
)

echo 成功：操作が正常に完了しました！
echo すべての操作が正常に完了しました。5秒後に終了します。
timeout /t 5 /nobreak >nul

endlocal