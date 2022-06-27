#!/bin/bash
if [ -z "$1" ]; then
    echo "Azure Resource Group name argument is required.";
    exit;
fi
if [ -z "$2" ]; then
    echo "Azure Web App name argument is required.";
    exit;
fi
echo "Getting azure subscription id...";
SUBSCRIPTION_ID=$(az account show --query id --out tsv);
echo "Using $SUBSCRIPTION_ID subscription...";
echo "Deploying application...";
az webapp deployment source config-zip \
    --subscription $SUBSCRIPTION_ID \
    --resource-group $1 \
    --name $2 \
    --src ./simple-app-release.zip