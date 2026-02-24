@echo off
:menu
cls
echo =================================Genshin Server Switcher
echo 当前位置: %~dp0
echo.
echo 1. 切换为 [官方服 - 天空岛] 并启动
echo 2. 切换为 [Bilibili服 - 世界树] 并启动
echo 3. 退出
echo.
set /p choice=请输入数字并按回车: 

if "%choice%"=="1" goto official
if "%choice%"=="2" goto bilibili
if "%choice%"=="3" exit
goto menu

:official
(
echo [General]
echo channel=1
echo cps=mihoyo
echo sub_channel=1
)>config.ini
echo [完成] 已切换至官服！正在启动...
start "" "YuanShen.exe"
pause
goto menu

:bilibili
(
echo [General]
echo channel=14
echo cps=bilibili
echo sub_channel=0
)>config.ini
echo [完成] 已切换至B服！正在启动...
start "" "YuanShen.exe"
pause
goto menu