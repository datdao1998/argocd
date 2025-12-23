# Step 1 : Install ArgoCD cluster

# Step 2 : Setup ArgoCD application

First login to set context
```
argocd login localhost:8080 --username admin --password <YOUR_ADMIN_PASSWORD> --insecure
```

Create bootstrap
```
argocd app create bootstrap \
  --repo https://github.com/datdao1998/argocd.git \
  --path bootstrap \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace argocd \
  --sync-policy automated \
  --auto-prune \
  --self-heal
```