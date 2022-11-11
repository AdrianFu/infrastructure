# To create Azure Service Principle
1. az login
1. export MSYS_NO_PATHCONV=1
1. az ad sp create-for-rbac --name infrastructure-provisioner --role Contributor --scopes /subscriptions/subscription-id/resourceGroups/AKS-test-run


# Specify service principal credentials in environment variables
### Edit the ~/.bashrc file by adding the following environment variables.
```
export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export ARM_CLIENT_ID="<service_principal_appid>"
export ARM_CLIENT_SECRET="<service_principal_password>"
```

