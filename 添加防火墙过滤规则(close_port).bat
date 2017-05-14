@echo off
color 1f
title 关闭常见的危险端口
echo 正在启动防火墙 请稍候…
sc config SharedAccess start= auto > nul
net start SharedAccess > nul
netsh firewall set opmode enable
echo 防火墙已经成功启动
echo 正在关闭常见的危险端口 请稍候…
echo 正在添加135过滤规则 请稍候…
netsh advfirewall firewall add rule name="deny135" dir=in protocol=tcp localport=135 action=block
echo 正在添加137过滤规则 请稍候…
netsh advfirewall firewall add rule name="deny137" dir=in protocol=tcp localport=137 action=block
echo 正在添加139过滤规则 请稍候…
netsh advfirewall firewall add rule name="deny139" dir=in protocol=tcp localport=139 action=block
echo 正在添加445过滤规则 请稍候…
netsh advfirewall firewall add rule name="deny445" dir=in protocol=tcp localport=445 action=block
echo 常见的危险端口规则已经添加，请查看“控制面板”-“Windows防火墙”-“高级设置”-“入站规则”中是否添加规则并启用.
echo 按任意键退出
pause>nul
