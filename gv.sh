contains() {
    string="$1"
    substring="$2"
    if test "${string#*$substring}" != "$string"
    then
        return 0    # $substring is in $string
    else
        return 1    # $substring is not in $string
    fi
}

while true; do
    result=$(curl -s 'https://www.google.com/voice/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.9' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice' -H 'authority: www.google.com' -H 'cookie: gv=qgWUvn6XQ2SQuu8JqKFMwAk9499s_TdeduABbGX9jEkQWw2yACJwo5evVsXOUzRImNRwDw.; GV_NR=1; SID=qgWUvmyM-6b8neTWhXHJ6WlMxDsYElGWazyX3WyOeuY0LinLfKoZBLkpmtedBCao9aBG1g.; HSID=A26_uB1jje_Pfb_hE; SSID=AKHOy2l0brmQ7KZ6p; APISID=qUJBwjgv6swr1Q0J/AREG6dbGJ5tAHa9b6; SAPISID=2KWHoroeHK3IS13E/AVEOSFV80eBo_tSYy; _ga=GA1.1.1712470895.1516368201; _gid=GA1.1.1055719436.1516368201; OTZ=4235548_24_24__24_; 1P_JAR=2018-1-22-10; NID=122=fOYXkN_O0TdrUEg4Q3RtMQvCbz-ofV177ZBlyE9FdnZqYe5XzC8rg3kAJXkUiTsrJgDTmuJpwOlhyiAR7pgIiA4eB3cJ9MrYjUIsFRR_56-DZt0e4c7ZumqBJf1szWqOCmdvWU4Ck41SF5KquYmTbbH7-CP3Y6IffNXR55JkpAoiAaCRxPN5AkuXzQ9IR_L3dUs7ArG4ZHgu7Byjb7Cbv318A-hz3I7L9mV4fENMUgkPKVIBzGlxLaE; _gat=1; S=grandcentral=KRTt5BCgSd-N1sb4GFVzq0R5z1D9Spd5:billing-ui-v3=wWzIPnLCiy1_U7dX-g-JKMG5VN24CXEZ:billing-ui-v3-efe=wWzIPnLCiy1_U7dX-g-JKMG5VN24CXEZ; SIDCC=AAiTGe9KbHwUECjmZ9h5N2WFvEZtKqeKhBeg53l2B1E8CKF1DHiI-IYOyVyuRpL0EZEdHwVaXQ' -H 'x-client-data: CJW2yQEIo7bJAQjBtskBCPqcygEIqZ3KAQioo8oB' --data 'sid=3&mid=6&req=%22%2B19253086216%22%2Ctrue%2C%22%22%5D&_rnr_se=3m7rbLYdtrBAe4UdPZ7FRNhj9uE%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1
done