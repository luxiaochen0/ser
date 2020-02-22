@ECHO off
set/p ipv4=192.168.1.
set trueipv4=192.168.1.%ipv4%
set/p ipv6=input ipv6

aliyun alidns UpdateDomainRecord --RecordId 19123530803843072 --RR hzwf-manager --Type A --Value %trueipv4% --Line default
aliyun alidns UpdateDomainRecord --RecordId 19238100006797312 --RR hzwf-manager --Type AAAA --Value %ipv6% --Line default
aliyun alidns UpdateDomainRecord --RecordId 19123601903715328 --RR hzwf-wx --Type A --Value %trueipv4% --Line default
aliyun alidns UpdateDomainRecord --RecordId 19238100867903488 --RR hzwf-wx --Type AAAA --Value %ipv6% --Line default

::aliyun alidns DescribeSubDomainRecords  --SubDomain hzwf-manager.luxiaochen.com

pause