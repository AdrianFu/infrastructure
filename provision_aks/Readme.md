# To config kubectl access
```
cd provision_aks
az aks get-credentials --resource-group $(../terraform output -raw resource_group_name) --name $(../terraform output -raw kubernetes_cluster_name)
```

# To Access Kubernetes Dashboard
```
cd provision_aks
az aks browse --resource-group $(../terraform output -raw resource_group_name) --name $(../terraform output -raw kubernetes_cluster_name)
```

# To destroy AKS cluster when done
```
terraform destroy
```

