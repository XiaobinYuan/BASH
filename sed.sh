 cat setCollector-removingData.txt
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01041.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01042.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01043.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01044.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01045.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01046.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01048.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01049.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01050.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01051.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01052.som.local
#/Server/Linux/ThirdParty/Kurbenetes/Node/MIX/smppkn01053.som.local
#/Server/Linux/ThirdParty/Bamboo/MIX/smphbamagent.som.local

# Replace \n to whitespace
for item in `cat setCollector-removingData.txt | awk -F / '{print $NF}' | sed ':a;N;$!ba;s/\n/ /g'`; do rm -rf ./$item; done
#smppkn01041.som.local
#smppkn01042.som.local
#smppkn01043.som.local
#smppkn01044.som.local
#smppkn01045.som.local
#smppkn01046.som.local
#smppkn01048.som.local
#smppkn01049.som.local
#smppkn01050.som.local
#smppkn01051.som.local
#smppkn01052.som.local
#smppkn01053.som.local
#smphbamagent.som.local
