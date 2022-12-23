# Azure Container Registry Commands

## Create
```
az acr create -n nameOfAcr -g resourceGroupName --SKU Basic
```

## List All
```
az acr list -o table
```

## Get images into registry
### Import image from Docker registry
```
az acr import -n learnStorageContainerRegistry --source docker.io/library/hello-world:latest -t hello-world-backup:1.0.0
```
### Build image from sorce, and push to registry
```
az acr build -n learnStorageContainerRegistry --image hello-world:v1 hellow-world/src
```

## List repository 
```
az acr repository list -n learnStorageContainerRegistry -o table
```

## List images/tags of a repository
```
az acr repository show -n learnStorageContainerRegistry --repository hello-world-backup -o table
az acr repository show-tags -n learnStorageContainerRegistry --repository hello-world-backup -o table
```