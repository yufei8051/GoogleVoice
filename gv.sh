contains()
{
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
    result=$(curl 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.9' -H 'user-agent: Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0' -H 'authority: www.google.com' -H 'cookie: gv=qgWUvn6XQ2SQuu8JqKFMwAk9499s_TdeduABbGX9jEkQWw2yACJwo5evVsXOUzRImNRwDw.; GV_NR=1; SID=qgWUvmyM-6b8neTWhXHJ6WlMxDsYElGWazyX3WyOeuY0LinLfKoZBLkpmtedBCao9aBG1g.; HSID=A26_uB1jje_Pfb_hE; SSID=AKHOy2l0brmQ7KZ6p; APISID=qUJBwjgv6swr1Q0J/AREG6dbGJ5tAHa9b6; SAPISID=2KWHoroeHK3IS13E/AVEOSFV80eBo_tSYy; _ga=GA1.1.1712470895.1516368201; _gid=GA1.1.1055719436.1516368201; OTZ=4235548_24_24__24_; NID=122=NfjsN8r3vwWNCYG0HAFEPAZHTe0KgYWWAhzbtdLkMLINKFk_3QX5Emm2r-MvMMraYDc4esZj39uQDX7UcLDEKP8mY-2QkzWCikBW1ezPXuttwf9wlUHhtS2knbV7m9E0Knti8dX1TuQP5_sIxdGSzcujChASV9UIRqXhURrQD9oMZKHEMqgW4dhoVPMnEONuPpOmUM07sZdliwuzjqaiKF61aQ-K1lUEV84sfQjJHdVfedQ_K74Xc8s; 1P_JAR=2018-1-23-8; _gat=1; S=grandcentral=_m8qvkkeO4UoW_-dosPUb-_2rGc54V97:billing-ui-v3=HlOTgUfL__fvao9PSswfr5DOaq4xsS6d:billing-ui-v3-efe=HlOTgUfL__fvao9PSswfr5DOaq4xsS6d; SIDCC=AAiTGe9Fyx49XJB1OqCRV61lYm5PbFJWt_QJrW9kfhhmNT5W6Xc02HlCnV1ixOSLaEV290gb3g' -H 'x-client-data: CJW2yQEIo7bJAQjBtskBCPqcygEIqZ3KAQioo8oB' --data 'sid=3&mid=2&req=%5Bnull%2Ctrue%5D&_rnr_se=3m7rbLYdtrBAe4UdPZ7FRNhj9uE%3D' --compressed)
    contains "$result" "error" || exit 0
    sleep 1
done


