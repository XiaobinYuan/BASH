#print string, " and ' in awk print

cat Sxe_x_Cluster4_x_Additions.csv 
#Cluster_Group,Server_Name,NCS_Server_Role,Host,IP Address,Ping Result,Ping Time
#Pool 1,xs1431.som.local,xxxxSpeechServer,xs1431,172.16.60.165,Succeeded,10/30/17 21:44
#Pool 1,xs1432.som.local,xxxxSpeechServer,xs1432,172.16.60.128,Succeeded,10/30/17 21:44
#Pool 1,xs1433.som.local,xxxxSpeechServer,xs1433,172.16.59.210,Succeeded,10/30/17 21:44
#Pool 1,xs1434.som.local,xxxxSpeechServer,xs1434,172.16.59.211,Succeeded,10/30/17 21:44
#Pool 1,xs1435.som.local,xxxxSpeechServer,xs1435,172.16.59.216,Succeeded,10/30/17 21:44

cat Sxe_x_Cluster4_x_Additions.csv | awk -F ',' '{print $2, "setManageIp='\''"$5"'\''"}'
#Server_Name setManageIp='IP Address'
#xs1431.som.local setManageIp='172.16.60.165'
#xs1432.som.local setManageIp='172.16.60.128'
#xs1433.som.local setManageIp='172.16.59.210'
#xs1434.som.local setManageIp='172.16.59.211'
#xs1435.som.local setManageIp='172.16.59.216'
### print " : awk '{print "\""}'
### print ' : awk '{print "'\''"}' 


###get the last column, quote it, and the add comma after it except the last one, for JSON use.
cat -n setCollector.txt
#     1  /Server/Linux/ThirdParty/Kurbenetes/Master/x/xm01001.som.local
#     2  /Server/Linux/ThirdParty/Kurbenetes/Master/x/xm01002.som.local
#     3  /Server/Linux/ThirdParty/Kurbenetes/Master/x/xm01003.som.local
#     4  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01005.som.local
#     5  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01006.som.local
#     6  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01007.som.local
#     7  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01008.som.local
#     8  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01009.som.local
#     9  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01011.som.local
#    10  /Server/Linux/ThirdParty/Kurbenetes/Node/x/xn01012.som.local

awk -F / 'BEGIN{"cat setCollector.txt|wc -l"|getline ROW} {if (NR <= ROW) {print "\""$NF"\""","} else {print  "\""$NF"\""}}' setCollector.txt
#"xm01001.som.local",
#"xm01002.som.local",
#"xm01003.som.local",
#"xn01005.som.local",
#"xn01006.som.local",
#"xn01007.som.local",
#"xn01008.som.local",
#"xn01009.som.local",
#"xn01011.som.local",
#"xn01012.som.local"

# delete column 5
 awk '{$5=""; print $0}' temp2.txt
