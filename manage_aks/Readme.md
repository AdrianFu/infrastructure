# Note
## To use image from non-official registry
Full image URL must be provided. E.g.,

```
image: <acr-name>.azurecr.io/nginx:v1
````

# Deployment Operation
## To get deployment history
```
kubectl rollout history deployment/app
```

## To rollback a deployment
```
kubectl rollout undo deployment/app --to-revision=2
```