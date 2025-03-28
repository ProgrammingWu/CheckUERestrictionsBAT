@ECHO OFF
echo Copyright(c) 2025 HongZhe Pei. All Rights Reserved.
echo The sole source of the script, please identify counterfeit versions: 
echo https://github.com/ProgrammingWu/CheckUE5RestrictionsBAT
echo =============================================================

echo Licensed under the Apache License, Version 2.0 (the "License");
echo you may not use this file except in compliance with the License.
echo You may obtain a copy of the License at
echo   http://www.apache.org/licenses/LICENSE-2.0

echo Unless required by applicable law or agreed to in writing, software
echo distributed under the License is distributed on an "AS IS" BASIS,
echo WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
echo See the License for the specific language governing permissions and
echo limitations under the License.

echo 继续执行脚本，代表您同意以上条款

call :ConfirmExecution

echo 开始检查是否有UE受限文件的脚本，版本：V0.1，适配UE版本：UE5 5.3。其他UE版本，只要规则没改，就依然可以适用
echo ************受限文件名*********
echo Mac
echo IOS
echo Android
echo Linux
echo LinuxArm64
echo TVOS
echo Apple
echo Unix
echo SDLPlatform
echo 30Hz
echo EpicInternal
echo CarefullyRedist
echo NotForLicensees
echo NoRedist
echo ******************************

echo 将会搜索“%cd%”文件夹下的受限文件名。如不正确，请退出脚本
REM echo 搜索需要时间，请确认是否开始搜索，输入Y为确认，输入N或其他字符退出脚本

call :ConfirmExecution 搜索需要时间，请确认是否开始搜索


REM ================开始搜索============
REM 只匹配Android的命令如下：
REM dir /s /b /ad | findstr /i /r "\\Android$" & dir /s /b /a-d | findstr /i /r "\\Android$ \\Android\.[^\\]*$"

call :ConfirmExecution 首先搜索目录。这需要一段时间，请耐心等待
dir /s /b | findstr /i /r "\\Android$ \\Mac$ \\IOS$ \\Linux$ \\LinuxArm64$ \\TVOS$ \\Apple$ \\Unix$ \\SDLPlatform$ \\30Hz$ \\EpicInternal$ \\CarefullyRedist$ \\NotForLicensees$ \\NoRedist$"

echo 搜索结束，如果有搜索结果，可以先拷贝记录下来，之后再处理。

call :ConfirmExecution 接下来搜索文件。这需要一段时间，请耐心等待
dir /s /b /a-d | findstr /i /r "\\Mac$ \\Mac\.[^\\]*$ \\IOS$ \\IOS\.[^\\]*$ \\Android$ \\Android\.[^\\]*$ \\Linux$ \\Linux\.[^\\]*$ \\LinuxArm64$ \\LinuxArm64\.[^\\]*$ \\TVOS$ \\TVOS\.[^\\]*$ \\Apple$ \\Apple\.[^\\]*$ \\Unix$ \\Unix\.[^\\]*$ \\SDLPlatform$ \\SDLPlatform\.[^\\]*$ \\30Hz$ \\30Hz\.[^\\]*$ \\EpicInternal$ \\EpicInternal\.[^\\]*$ \\CarefullyRedist$ \\CarefullyRedist\.[^\\]*$ \\NotForLicensees$ \\NotForLicensees\.[^\\]*$ \\NoRedist$ \\NoRedist\.[^\\]*$"

echo 搜索结束，如果有搜索结果，可以先拷贝记录下来，之后再处理。

echo ******************
echo 搜索检查结束。记得先把结果拷贝下来再关闭脚本哦

PAUSE



exit

REM ================ 函数定义 ================
:ConfirmExecution
set "keyword=%~1"
echo ******************
echo %keyword%,输入Y继续执行脚本，输入N或其他字符退出脚本
set/p "mode1=请输入选择: "
REM 统一转为大写比较（不区分大小写）
if /i "%mode1%"=="Y" (
    set "EXIT_FLAG=0"
) else (
    set "EXIT_FLAG=1"
)
if "%EXIT_FLAG%"=="1" exit
exit /b