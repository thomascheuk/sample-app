#!/bin/bash
./IBM_Cloud_CLI/ibmcloud login -u apikey -p 5l3MxD2nKmP7WxGzu-Vn6D2fVHx2de9lV5fetJkqpzeh
./IBM_Cloud_CLI/ibmcloud target -r au-syd -o owenchen@tw.ibm.com -s cheuk.sydney
./IBM_Cloud_CLI/ibmcloud ce application update -n sample-app