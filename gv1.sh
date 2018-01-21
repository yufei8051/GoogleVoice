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
    result=$(curl 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.9' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0?gsessionid=Wr4pNZfKrMJfz42NI_QFDayHxc2lfatl' -H 'authority: www.google.com' -H 'cookie: GV_NR=1; gv=qgWUvn6XQ2SQuu8JqKFMwAk9499s_TdeduABbGX9jEkQWw2yACJwo5evVsXOUzRImNRwDw.; SID=qgWUvmyM-6b8neTWhXHJ6WlMxDsYElGWazyX3WyOeuY0LinLfKoZBLkpmtedBCao9aBG1g.; HSID=A26_uB1jje_Pfb_hE; SSID=AKHOy2l0brmQ7KZ6p; APISID=qUJBwjgv6swr1Q0J/AREG6dbGJ5tAHa9b6; SAPISID=2KWHoroeHK3IS13E/AVEOSFV80eBo_tSYy; _ga=GA1.1.1712470895.1516368201; _gid=GA1.1.1055719436.1516368201; OTZ=4235548_24_24__24_; NID=122=lcFU7LIl64jpzBZuMHnZzMP8XFoT6FDnXnAVRzUd8Q8OVQWLX0xZro96Iqvo2GrUyvjfmLfm68mxyuc_w6YV76S80mXXftA3u9dmXMiyugXbRgFeZi7qd7Gta37t9QamooiJou42dTyTuVswxRgkw9oZsEvBC7Q70YX48qIYOBON8QaKcCMrszt0AS1fMXnXssCW7CebLMFXcwwErOO-cS69hL4DSrhCzIUfv1jAZDsB1HqoAU5NtCJEzOdm7Q; 1P_JAR=2018-1-21-9; _gat=1; S=billing-ui-v3=_t8gEhrgDLN8RfRHh2Krc18umMqJZ36h:billing-ui-v3-efe=_t8gEhrgDLN8RfRHh2Krc18umMqJZ36h:grandcentral=Wr4pNZfKrMJfz42NI_QFDayHxc2lfatl; SIDCC=AAiTGe9EchXIi8goCEjAYyj6RhfA8H89NrsyOTNSL-fLq3OUKTOm6UZ4y_10E5ksWQ2xqzEI9g' -H 'x-client-data: CJW2yQEIo7bJAQjBtskBCPqcygEIqZ3KAQioo8oB' --data 'sid=3&mid=6&req=%22%2B19253029217%22%2Ctrue%2C%22%22%5D%5D&_rnr_se=3m7rbLYdtrBAe4UdPZ7FRNhj9uE%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1
done