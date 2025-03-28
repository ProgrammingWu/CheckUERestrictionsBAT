# Introduction
Bilibili Personal Homepage：https://space.bilibili.com/381317561

CheckUE5Restrictions-ZH.bat - Chinese version script. The original script, but may display garbled characters. Hence the English version is provided.

CheckUE5Restrictions-EN.bat - English version script. If you encounter garbled characters with CheckUE5Restrictions-ZH.bat, please download this one.

Based on:
Developed for UE5.3 and Windows 11 systems.

Script Functionality:
UE5 imposes certain filename restrictions. If your project contains files with prohibited names, packaging will fail (Note: Failure occurs only when restricted files are referenced during packaging. Unreferenced files won't cause issues).

This script automates the detection of restricted filenames by incorporating all UE5 naming restrictions for validation.

Usage
Copy the script to your project root directory and double-click to run. Follow the on-screen instructions.

Note:
Windows only supports BAT files with CRLF line endings and ANSI encoding.

CRLF: We've enforced Git to manage this file using CRLF line endings. This should work as intended.

ANSI: In Windows 11, Notepad recognizes text files containing only ANSI-encoded characters as UTF-8 encoded files. Therefore, if you modify such a file by adding non-ANSI characters (e.g., Chinese characters) and save it, Notepad will save the file in UTF-8 encoding instead, which may cause it to fail to run. Please note this issue.

Issue Reporting
To report issues, please visit the GitHub Issues page:
https://github.com/ProgrammingWu/CheckUERestrictionsBAT/issues

# ===========================================================
# 简介
B站个人主页： https://space.bilibili.com/381317561

CheckUE5Restrictions-ZH.bat - 中文版脚本。最原始的脚本，不过考虑到会乱码。所以才有了英文版脚本

CheckUE5Restrictions-EN.bat - 英文版脚本。如CheckUE5Restrictions-ZH.bat有乱码，请下载这个

# 基于：
基于UE5.3 和 Windows11系统开发

# 脚本功能：
UE5会有一些限制文件命名。如果项目中有这些命名的文件。再打包的时候，就会打包失败（注：打包的时候，因为引用包含了这个文件。不包含不会失败）。

所以我写了这个脚本，把UE5的限制文件名全添加到这个脚本里了。可以自动化检查有无限制文件。

# 使用方法
把脚本拷贝到项目根目录，然后双击运行。根据提示进行操作。

# 注意：
windows仅支持CRLF换行符和ANSI编码的BAT文件运行。

CRLF：我已经强制让GIT管理此文件时，使用CRLF换行符。应该不会有问题。

ANSI: Windows11的记事本，会把只有ANSI编码字符的文本文件识别为UTF8编码，所以如果修改此文件，加入了非ANSI字符（如中文字符），保存的时候就会保存为UTF8编码的文件，导致无法运行。请注意这一点。

# 问题汇报
如发现问题，请在issues汇报问题。

https://github.com/ProgrammingWu/CheckUERestrictionsBAT/issues

