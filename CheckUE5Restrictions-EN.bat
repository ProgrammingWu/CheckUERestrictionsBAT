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

echo ����ִ�нű���������ͬ����������

call :ConfirmExecution

echo ��ʼ����Ƿ���UE�����ļ��Ľű����汾��V0.1������UE�汾��UE5 5.3������UE�汾��ֻҪ����û�ģ�����Ȼ��������
echo ************�����ļ���*********
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

echo ����������%cd%���ļ����µ������ļ������粻��ȷ�����˳��ű�
REM echo ������Ҫʱ�䣬��ȷ���Ƿ�ʼ����������YΪȷ�ϣ�����N�������ַ��˳��ű�

call :ConfirmExecution ������Ҫʱ�䣬��ȷ���Ƿ�ʼ����


REM ================��ʼ����============
REM ֻƥ��Android���������£�
REM dir /s /b /ad | findstr /i /r "\\Android$" & dir /s /b /a-d | findstr /i /r "\\Android$ \\Android\.[^\\]*$"

call :ConfirmExecution ��������Ŀ¼������Ҫһ��ʱ�䣬�����ĵȴ�
dir /s /b | findstr /i /r "\\Android$ \\Mac$ \\IOS$ \\Linux$ \\LinuxArm64$ \\TVOS$ \\Apple$ \\Unix$ \\SDLPlatform$ \\30Hz$ \\EpicInternal$ \\CarefullyRedist$ \\NotForLicensees$ \\NoRedist$"

echo �����������������������������ȿ�����¼������֮���ٴ���

call :ConfirmExecution �����������ļ�������Ҫһ��ʱ�䣬�����ĵȴ�
dir /s /b /a-d | findstr /i /r "\\Mac$ \\Mac\.[^\\]*$ \\IOS$ \\IOS\.[^\\]*$ \\Android$ \\Android\.[^\\]*$ \\Linux$ \\Linux\.[^\\]*$ \\LinuxArm64$ \\LinuxArm64\.[^\\]*$ \\TVOS$ \\TVOS\.[^\\]*$ \\Apple$ \\Apple\.[^\\]*$ \\Unix$ \\Unix\.[^\\]*$ \\SDLPlatform$ \\SDLPlatform\.[^\\]*$ \\30Hz$ \\30Hz\.[^\\]*$ \\EpicInternal$ \\EpicInternal\.[^\\]*$ \\CarefullyRedist$ \\CarefullyRedist\.[^\\]*$ \\NotForLicensees$ \\NotForLicensees\.[^\\]*$ \\NoRedist$ \\NoRedist\.[^\\]*$"

echo �����������������������������ȿ�����¼������֮���ٴ���

echo ******************
echo �������������ǵ��Ȱѽ�����������ٹرսű�Ŷ

PAUSE



exit

REM ================ �������� ================
:ConfirmExecution
set "keyword=%~1"
echo ******************
echo %keyword%,����Y����ִ�нű�������N�������ַ��˳��ű�
set/p "mode1=������ѡ��: "
REM ͳһתΪ��д�Ƚϣ������ִ�Сд��
if /i "%mode1%"=="Y" (
    set "EXIT_FLAG=0"
) else (
    set "EXIT_FLAG=1"
)
if "%EXIT_FLAG%"=="1" exit
exit /b