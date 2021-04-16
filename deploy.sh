#!/bin/bash
./IBM_Cloud_CLI/ibmcloud plugin install -f code-engine
./IBM_Cloud_CLI/ibmcloud login -r jp-tok -g cheuk -u apikey -p 5l3MxD2nKmP7WxGzu-Vn6D2fVHx2de9lV5fetJkqpzeh
./IBM_Cloud_CLI/ibmcloud target -r jp-tok -g cheuk
./IBM_Cloud_CLI/ibmcloud ce project select -n cheuk
./IBM_Cloud_CLI/ibmcloud ce application update -n sample-app