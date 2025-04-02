@ECHO OFF
echo Copyright(c) 2025 Pei Hongzhe. All Rights Reserved.
echo The sole source of the script, please identify counterfeit versions: 
echo https://github.com/ProgrammingWu/CheckUERestrictionsBAT
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

echo By continuing to execute this script, you agree to the above terms.

call :ConfirmExecution

echo Starting script to check UE restricted files. Version: V0.1, compatible with UE5 5.3. May work with other UE versions if rules remain unchanged.
echo ************Restricted filenames*********
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

echo Will search restricted filenames under "%cd%". Exit if incorrect directory.

call :ConfirmExecution "Search will take time. Confirm to proceed"


REM ================Start Search============
REM Command to match Android only:
REM dir /s /b /ad | findstr /i /r "\\Android$" & dir /s /b /a-d | findstr /i /r "\\Android$ \\Android\.[^\\]*$"

call :ConfirmExecution "First searching directories. This may take time, please wait"
dir /s /b | findstr /i /r "\\Android$ \\Mac$ \\IOS$ \\Linux$ \\LinuxArm64$ \\TVOS$ \\Apple$ \\Unix$ \\SDLPlatform$ \\30Hz$ \\EpicInternal$ \\CarefullyRedist$ \\NotForLicensees$ \\NoRedist$"

echo Search completed. If results found, copy them for review.

call :ConfirmExecution "Next searching files. This may take time, please wait"
dir /s /b /a-d | findstr /i /r "\\Mac$ \\Mac\.[^\\]*$ \\IOS$ \\IOS\.[^\\]*$ \\Android$ \\Android\.[^\\]*$ \\Linux$ \\Linux\.[^\\]*$ \\LinuxArm64$ \\LinuxArm64\.[^\\]*$ \\TVOS$ \\TVOS\.[^\\]*$ \\Apple$ \\Apple\.[^\\]*$ \\Unix$ \\Unix\.[^\\]*$ \\SDLPlatform$ \\SDLPlatform\.[^\\]*$ \\30Hz$ \\30Hz\.[^\\]*$ \\EpicInternal$ \\EpicInternal\.[^\\]*$ \\CarefullyRedist$ \\CarefullyRedist\.[^\\]*$ \\NotForLicensees$ \\NotForLicensees\.[^\\]*$ \\NoRedist$ \\NoRedist\.[^\\]*$"

echo Search completed. If results found, copy them for review.

echo ******************
echo Check completed. Remember to copy the results before closing the script.

PAUSE



exit

REM ================ Function Definitions ================
:ConfirmExecution
set "keyword=%~1"
echo ******************
echo %keyword%,Enter Y to continue, N or others to exit
set/p "mode1=Please choose: "
REM Convert to uppercase for comparison (case insensitive)
if /i "%mode1%"=="Y" (
    set "EXIT_FLAG=0"
) else (
    set "EXIT_FLAG=1"
)
if "%EXIT_FLAG%"=="1" exit
exit /b