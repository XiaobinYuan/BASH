#!bin/bash

##substring##
echo "STRING" | cut -c2-5
##TRIN
echo "birthday-091216-pics" | cut -d'-' -f 2
##091216

string=testString
echo ${string:0}
##testString
echo ${string:2:3}
##stS
echo ${string:0:-1}
##testStrin
echo ${string:0:-2}
##testStri
echo ${string:-1}
##testString
echo ${string:-1:-5}
##testString
 
