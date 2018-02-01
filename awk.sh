#print string, " and ' in awk print

cat Somerville_Pod1_Cluster4_NSS_Additions.csv 
#Cluster_Group,Server_Name,NCS_Server_Role,Host,IP Address,Ping Result,Ping Time
#MREC Pool 1,smppncsnss1431.som.local,NuanceSpeechServer,smppncsnss1431,172.16.60.165,Succeeded,10/30/17 21:44
#MREC Pool 1,smppncsnss1432.som.local,NuanceSpeechServer,smppncsnss1432,172.16.60.128,Succeeded,10/30/17 21:44
#MREC Pool 1,smppncsnss1433.som.local,NuanceSpeechServer,smppncsnss1433,172.16.59.210,Succeeded,10/30/17 21:44
#MREC Pool 1,smppncsnss1434.som.local,NuanceSpeechServer,smppncsnss1434,172.16.59.211,Succeeded,10/30/17 21:44
#MREC Pool 1,smppncsnss1435.som.local,NuanceSpeechServer,smppncsnss1435,172.16.59.216,Succeeded,10/30/17 21:44

cat Somerville_Pod1_Cluster4_NSS_Additions.csv | awk -F ',' '{print $2, "setManageIp='\''"$5"'\''"}'
#Server_Name setManageIp='IP Address'
#smppncsnss1431.som.local setManageIp='172.16.60.165'
#smppncsnss1432.som.local setManageIp='172.16.60.128'
#smppncsnss1433.som.local setManageIp='172.16.59.210'
#smppncsnss1434.som.local setManageIp='172.16.59.211'
#smppncsnss1435.som.local setManageIp='172.16.59.216'
### print " : awk '{print "\""}'
### print ' : awk '{print "'\''"}' 


###get the last column, quote it, and the add comma after it except the last one, for JSON use.
cat -n setCollector.txt
#     1  /Server/Linux/ThirdParty/Kurbenetes/Master/MIX/smppkm01001.som.local
#     2  /Server/Linux/ThirdParty/Kurbenetes/Master/MIX/smppkm01002.som.local
#     3  /Server/Linux/ThirdParty/Kurbenetes/Master/MIX/smppkm01003.som.local
#     4  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01005.som.local
#     5  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01006.som.local
#     6  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01007.som.local
#     7  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01008.som.local
#     8  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01009.som.local
#     9  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01011.som.local
#    10  /Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01012.som.local

awk -F / 'BEGIN{"cat setCollector.txt|wc -l"|getline ROW} {if (NR <= ROW) {print "\""$NF"\""","} else {print  "\""$NF"\""}}' setCollector.txt
#"smppkm01001.som.local",
#"smppkm01002.som.local",
#"smppkm01003.som.local",
#"smppkn01005.som.local",
#"smppkn01006.som.local",
#"smppkn01007.som.local",
#"smppkn01008.som.local",
#"smppkn01009.som.local",
#"smppkn01011.som.local",
#"smppkn01012.som.local"
