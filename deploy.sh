#!/bin/sh

# These can be fetched from ENV in a real setting
export RESOURCE_GROUP=DockerCloudAppGroup
export NAME=DockerCloudApp

# Make sure group does not exist
az group delete --name $RESOURCE_GROUP --yes
# Create resource group
az group create --name $RESOURCE_GROUP --location "Canada East"

# Deploy
az --verbose group deployment create \
    --name $NAME \
    --resource-group $RESOURCE_GROUP \
    --template-file azure/azuredeploy.json \
    --parameters @azure/azuredeploy.parameters.json \
