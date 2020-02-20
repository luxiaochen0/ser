@ECHO off
set/p ip=192.168.1.
set trueip=192.168.1.%ip%

aliyun alidns UpdateDomainRecord --RecordId 19123530803843072 --RP hzwf-manager --Type A --Value %trueip% --Line default
aliyun alidns UpdateDomainRecord --RecordId 19123601903715328 --RP hzwf-wx --Type A --Value %trueip% --Line default

::aliyun alidns DescribeSubDomainRecords  --SubDomain hzwf-manager.luxiaochen.com

pause