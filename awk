#print string, " and ' in awk print

[zenoss@zenoss sf_Downloads]$ cat Somerville_Pod1_Cluster4_NSS_Additions.csv 
Cluster_Group,Server_Name,NCS_Server_Role,Host,IP Address,Ping Result,Ping Time
MREC Pool 1,smppncsnss1431.som.local,NuanceSpeechServer,smppncsnss1431,172.16.60.165,Succeeded,10/30/17 21:44
MREC Pool 1,smppncsnss1432.som.local,NuanceSpeechServer,smppncsnss1432,172.16.60.128,Succeeded,10/30/17 21:44
MREC Pool 1,smppncsnss1433.som.local,NuanceSpeechServer,smppncsnss1433,172.16.59.210,Succeeded,10/30/17 21:44
MREC Pool 1,smppncsnss1434.som.local,NuanceSpeechServer,smppncsnss1434,172.16.59.211,Succeeded,10/30/17 21:44
MREC Pool 1,smppncsnss1435.som.local,NuanceSpeechServer,smppncsnss1435,172.16.59.216,Succeeded,10/30/17 21:44

[zenoss@zenoss sf_Downloads]$ cat Somerville_Pod1_Cluster4_NSS_Additions.csv | awk -F ',' '{print $2, "setManageIp='\''"$5"'\''"}'
Server_Name setManageIp='IP Address'
smppncsnss1431.som.local setManageIp='172.16.60.165'
smppncsnss1432.som.local setManageIp='172.16.60.128'
smppncsnss1433.som.local setManageIp='172.16.59.210'
smppncsnss1434.som.local setManageIp='172.16.59.211'
smppncsnss1435.som.local setManageIp='172.16.59.216'
### print " : awk '{print "\""}'
### print ' : awk '{print "'\''"}' 
