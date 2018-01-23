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
    result=$(curl -s 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.9' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: gv=qgWUvn6XQ2SQuu8JqKFMwAk9499s_TdeduABbGX9jEkQWw2yACJwo5evVsXOUzRImNRwDw.; GV_NR=1; SID=qgWUvmyM-6b8neTWhXHJ6WlMxDsYElGWazyX3WyOeuY0LinLfKoZBLkpmtedBCao9aBG1g.; HSID=A26_uB1jje_Pfb_hE; SSID=AKHOy2l0brmQ7KZ6p; APISID=qUJBwjgv6swr1Q0J/AREG6dbGJ5tAHa9b6; SAPISID=2KWHoroeHK3IS13E/AVEOSFV80eBo_tSYy; _ga=GA1.1.1712470895.1516368201; _gid=GA1.1.1055719436.1516368201; OTZ=4235548_24_24__24_; 1P_JAR=2018-1-23-10; S=grandcentral=pld0IvB3tb-K8tA5vud1BiqL02o3MqO2:billing-ui-v3=gAH52-rt5V8J7IZuVoamZeTCnr8jjEZw:billing-ui-v3-efe=gAH52-rt5V8J7IZuVoamZeTCnr8jjEZw; NID=122=pEKW62lt2y3A26JhYefOA7W82YjKUBQ2jx3iVetIK6Nb_dDd0FrW6mucJhRpmFo8iDMUnWEOAtXTBnRCXJTL4SHiATT-WV4toHUvsApVOzfz3xWuSA69b9wHzOOly79VEkblykwJUKCCa5U3uQi7RUBdbn2O2wYrwPUbc4aeQQ47wirB9rqpCDZdOMwcfRuFTZVermMcz2Sd3TKesxRFqbx2kqRlhg0o3HFWzApG_j4cAcTTGTAPhgU; _gat=1; SIDCC=AAiTGe8zbumDapmkTrpMNxStZ4pKG9RpJiBQGG49wuLGP0nWZVIwkj-G-j8G0IFyAXdGR4YAlA' -H 'x-client-data: CJW2yQEIo7bJAQjBtskBCPqcygEIqZ3KAQioo8oB' --data 'sid=3&mid=6&req=%22%2B19852362768%22%2Ctrue%2C%22%22%5D&_rnr_se=3m7rbLYdtrBAe4UdPZ7FRNhj9uE%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1
done