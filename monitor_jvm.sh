#!/bin/bash

#Constant#
HOSTNAME0101="tony-host"
HOSTNAME0102="tony-host"
COMMAND_GREP="pgrep java"
COMMAND_LOGIN="ssh -l tomcat "
TIME_INTERVAL=1000
TIMES=10

#Commans
JAVA_PROCESS_101=`${COMMAND_LOGIN} ${HOSTNAME0101} ${COMMAND_GREP}`
JAVA_PROCESS_102=`${COMMAND_LOGIN} ${HOSTNAME0102} ${COMMAND_GREP}`
COMMAND_JSTAT101="/usr/local/jdk1.7/bin/jstat -gcutil ${JAVA_PROCESS_101} ${TIME_INTERVAL} ${TIMES}"
COMMAND_JSTAT102="/usr/local/jdk1.7/bin/jstat -gcutil ${JAVA_PROCESS_102}  ${TIME_INTERVAL} ${TIMES}"

# Production output the jstat result to file
echo "Java process number of agpayment101zd is ${JAVA_PROCESS_101}"
echo "Java process number of agpayment102zd is ${JAVA_PROCESS_102}"
${COMMAND_LOGIN} ${HOSTNAME0101} ${COMMAND_JSTAT101} >> jstat101.txt
${COMMAND_LOGIN} ${HOSTNAME0102} ${COMMAND_JSTAT102} >> jstat102.txt
echo "#### done ###"
