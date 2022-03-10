#!/bin/bash
if [ -z "$1" ]; then
    echo "No argument supplied. Either 'dev', 'test' or 'prod' is required.";
    exit;
fi
echo "Getting azure subscription id...";
SUBSCRIPTION_ID=$(az account show --query id --out tsv);
echo "Using $SUBSCRIPTION_ID subscription...";
echo "Deploying application...";
az webapp deployment source config-zip \
    --subscription $SUBSCRIPTION_ID \
    --resource-group rg-everything-as-code-workshop-$1 \
    --name app-everything-as-code-workshop-$1 \
    --src ./simple-app-release.zip