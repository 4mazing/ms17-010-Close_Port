@echo off 
color 1f 
title �رճ�����Σ�ն˿� 
echo ������������ǽ ���Ժ� 
sc config SharedAccess start= auto > nul 
net start SharedAccess > nul 
echo ����ǽ�Ѿ��ɹ����� 
echo ���ڹرճ�����Σ�ն˿� ���Ժ� 
echo ���ڹر�135�˿� ���Ժ� 
netsh advfirewall set portopening protocol = ALL port = 135 name = 135 mode = DISABLE scope = ALL profile = ALL 
echo ���ڹر�137�˿� ���Ժ� 
netsh firewall set portopening protocol = ALL port = 137 name = 137 mode = DISABLE scope = ALL profile = ALL 
echo ���ڹر�138�˿� ���Ժ� 
netsh firewall set portopening protocol = ALL port = 138 name = 138 mode = DISABLE scope = ALL profile = ALL 
echo ���ڹر�139�˿� ���Ժ� 
netsh firewall set portopening protocol = ALL port = 139 name = 139 mode = DISABLE scope = ALL profile = ALL 
echo ���ڹر�445�˿� ���Ժ� 
netsh firewall set portopening protocol = ALL port = 445 name = 445 mode = DISABLE scope = ALL profile = ALL 
echo ������Σ�ն˿��Ѿ��ر�  
echo ��������˳� 
pause>nul 