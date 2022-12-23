# To create Azure Service Principle
1. az login
1. export MSYS_NO_PATHCONV=1
1. az ad sp create-for-rbac --name infrastructure-provisioner --role Contributor --scopes /subscriptions/subscription-id/resourceGroups/AKS-test-run


# Specify service principal credentials in environment variables
### Edit the ~/.bashrc file by adding the following environment variables.
```
export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export TF_VAR_sp_client_id="<service_principal_appid>"
export TF_VAR_sp_password="<service_principal_password>"
```

