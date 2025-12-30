### Criar arquivo yml via CLI
```bash
kubectl run ex-nginx --image nginx --dry-run=client -o yaml > pod-template.yaml
```
### Expor um svc do pod
```bash
kubectl expose pod ex-nginx
```
### Listar recursos de um namespace:
```bash
    kubectl get all -n <seu-namespace>
```