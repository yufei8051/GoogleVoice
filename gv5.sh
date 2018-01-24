#!/bin/bash
#请注意使用UTF-8 without BOM格式，否则可能会出错
#脚本 by Sunbread
########## Setting ##########
threads=16 # 根据自身情况调整，若不会调整则按默认值即可
########## Code ##########
echo 伪多线程脚本 by Sunbread
for((i=0;i<$threads;++i));do while :;do
    curl 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.9' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: gv=qgWUvn6XQ2SQuu8JqKFMwAk9499s_TdeduABbGX9jEkQWw2yACJwo5evVsXOUzRImNRwDw.; GV_NR=1; SID=qgWUvmyM-6b8neTWhXHJ6WlMxDsYElGWazyX3WyOeuY0LinLfKoZBLkpmtedBCao9aBG1g.; HSID=A26_uB1jje_Pfb_hE; SSID=AKHOy2l0brmQ7KZ6p; APISID=qUJBwjgv6swr1Q0J/AREG6dbGJ5tAHa9b6; SAPISID=2KWHoroeHK3IS13E/AVEOSFV80eBo_tSYy; _ga=GA1.1.1712470895.1516368201; _gid=GA1.1.1055719436.1516368201; OTZ=4235548_24_24__24_; NID=122=IRWZNuMhWsL0xSCxlbuCgK5XLZB0LENhX3dyPd58srxYAjKKjosL7MnelaDydwP3EBH7Jc2GMLUqHnnbbQzSGA7ZwJ42fFP82qZvZtja82N6uPASTWEPYGBPl4kGVSRRu4eOLZd6Hq3mG7yUb1NQgcSySPw5xPD7BXmhJPi5jHmF6U0xxlG5tXNH1zDk1PDCsOBpfl5c-QloC7lY0N4x74F1I-tpnwyGZ156yiYDcOBUYFY-w6Qb9O8; 1P_JAR=2018-1-24-14; S=grandcentral=Qxi0Fj-wFLH8XGJgpRX6IFiE5A-N1iAg:billing-ui-v3=wv6KVhbefdzhYy6D9L7dC3Cn3k8ntD0a:billing-ui-v3-efe=wv6KVhbefdzhYy6D9L7dC3Cn3k8ntD0a; _gat=1; SIDCC=AAiTGe-Au2boTK1ejVpJ67-WaOEZyBl0y7aHCxNUxLC059GzKTGWLOGhCyLMFWyQGqm_AtwcAg' -H 'x-client-data: CJW2yQEIo7bJAQjBtskBCPqcygEIqZ3KAQioo8oB' --data 'sid=3&mid=6&req=%22%2B19852362768%22%2Ctrue%2C%22%22%5D&_rnr_se=3m7rbLYdtrBAe4UdPZ7FRNhj9uE%3D' --compressed >/dev/null 2>/dev/null
    # 用刚才的命令替换中括号里的内容（包括两个中括号本身）
done &
done
echo 结束脚本请使用Ctrl+C，使用其它方法可能会出现无法预料的异常，谢谢合作
wait
