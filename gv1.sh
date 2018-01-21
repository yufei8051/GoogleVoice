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
    result=$(curl -s 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.9' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: GV_NR=1; gv=qgWUvn6XQ2SQuu8JqKFMwAk9499s_TdeduABbGX9jEkQWw2yACJwo5evVsXOUzRImNRwDw.; SID=qgWUvmyM-6b8neTWhXHJ6WlMxDsYElGWazyX3WyOeuY0LinLfKoZBLkpmtedBCao9aBG1g.; HSID=A26_uB1jje_Pfb_hE; SSID=AKHOy2l0brmQ7KZ6p; APISID=qUJBwjgv6swr1Q0J/AREG6dbGJ5tAHa9b6; SAPISID=2KWHoroeHK3IS13E/AVEOSFV80eBo_tSYy; _ga=GA1.1.1712470895.1516368201; _gid=GA1.1.1055719436.1516368201; OTZ=4235548_24_24__24_; NID=122=Pa4TUFj9LNQCN9TWgzZlGiclt2gUsVChhelkzVi0WnMinH6YUeRnptdHKLeI5QxI9A70uH0L1PXAjVMGZ7Jlp42R7c5w67qpWTU-4L_A9tVv_-gcjctUUG_0NYfKt3DVX4FzRxpfWzFv6Q4oX1TkvvctzPmuCuNBG9kFHm9Dto1rPD3liU8YlKPd4T8OgsDvXYwF0fmJqY6_wt2VkOdoX6psVlE1fZX1h-2Bp3_tM4bdL617hvgGtd0; 1P_JAR=2018-1-21-16; _gat=1; S=grandcentral=sTTeI-QYIDRYGHTUos21J-TXvGbrm1Zs:billing-ui-v3=rS-G6gyHkvKRyGDS_j1wN-yoCOtOvEr6:billing-ui-v3-efe=rS-G6gyHkvKRyGDS_j1wN-yoCOtOvEr6; SIDCC=AAiTGe_zn3Xw_GIDZusWYROa5kPugIBtSTwUSrxrnkYjqNos0U-Bt9PvVZi1v7hE1mVP1nVoVw' -H 'x-client-data: CJW2yQEIo7bJAQjBtskBCPqcygEIqZ3KAQioo8oB' --data 'sid=3&mid=6&req=%22%2B19253029217%22%2Ctrue%2C%22%22%5D&_rnr_se=3m7rbLYdtrBAe4UdPZ7FRNhj9uE%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1
done