@echo off
color f0
mode con cols=65 lines=20
title U�̲�����ɱ by����
echo ��ɱFakeFolder����  ���� by����
echo ���棡�������һ���ڲ�ʹ�ã�����ʹ����ɵ����ݶ�ʧ�����߸Ų�����
goto aa

:aa
color f0
set /p driverName="������U���̷�(���ҵ���������F)�������»س�:"
if /i "%driverName%"=="C" cls&goto wn
cls
color a
goto de

:de
del %driverName%:\*.exe
cls
goto rc

:rc
for /f "delims=" %%a in ('dir /ah /s/b %driverName%:') do attrib "%%a" -s -r -a -h /d /s
cls
goto ed

:ed
cls
echo ɱ�����
pause
exit

:wn
color 4
echo ���棡������U��ɱ������������C�̣���
pause
cls
goto aa