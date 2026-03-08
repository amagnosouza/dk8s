k apply -f deployment.yaml --dry-run=client
k apply -f deployment.yaml -n default --dry-run=client 
k get ns -A
k create ns day03
k apply -f deployment.yaml -n day03
k get pods -n day03
k get deployments.apps -o yaml -n day03
k get pods -l app=nginx-deployment
k get pods -l app=nginx-deployment -n day03
k get replicasets.apps -n day03
k describe deployments.apps -n day03
k delete -f deployment.yaml -n day03
k create deployment --image nginx --replicas 3 --name nginx-deployment -n day03
k create deployment --image nginx --replicas 3 nginx-deployment -n day03
k get deployments.apps -n day03
k delete deployments.apps -n day03
k delete deployments.apps nginx-deployment -n day03
k create deployment --image nginx --replicas 3 nginx-deployment -n day03 --dry-run=client
k create deployment --image nginx --replicas 3 nginx-deployment -n day03 --dry-run=client -o yaml
k create deployment --image nginx --replicas 3 nginx-deployment -n day03 --dry-run=client -o yaml > novo-deployment.yaml
k apply -f novo-deployment.yaml -n day03
k get deployments.apps -n day03
k delete deployments.apps nginx-deployment2 -n day03
k get deployments.apps -n day03
k apply -f deployment.yaml -n day03
k create ns day03 --dry-run=client -o yaml > namespace.yaml
k apply -f deployment.yaml -n day03
k get deployments.apps -n day03
k get pods -l app=nginx-deployment -n day03
k apply -f deployment.yaml -n day03
k get pods -l app=nginx-deployment -n day03
k exec -it nginx-deployment-7d4b7f7cc4-4mfzt -n day03 -- nginx -v
k get node
k apply -f deployment-default.yaml -n day03 --dry-run=client
k get pods -l app=nginx-deployment -n day03
k apply -f deployment-default.yaml -n day03
k describe deployments.apps -n day03
k apply -f deployment-default.yaml -n day03
k describe deployments.apps -n day03
k apply -f deployment-default.yaml -n day03
k rollout status deployment -n day03 nginx-deployment
k apply -f deployment-default.yaml -n day03
k rollout status deployment -n day03 nginx-deployment
k apply -f deployment-default.yaml -n day03
k rollout status deployment -n day03 nginx-deployment
k apply -f deployment-Recreate.yaml -n day03
k rollout status deployment -n day03 nginx-deployment
k get pods -l app=nginx-deployment -n day03
k apply -f deployment-Recreate.yaml -n day03
k get pods -l app=nginx-deployment -n day03
k exec -it nginx-deployment-7d4b7f7cc4-4mfzt -n day03 -- nginx -v
k delete deployments.apps nginx-deployment -n day03
k apply -f deployment-alter.yaml -n day03
k get pods -l app=nginx-deployment -n day03
k rollout undo deployment -n day03 nginx-deployment
k apply -f deployment.yaml -n day03
k get deployments.apps -n day03
k apply -f deployment-alter.yaml -n day03
k get deployments.apps -n day03
k rollout undo deployment -n day03 nginx-deployment
k rollout history deployment -n day03 nginx-deployment
k rollout history deployment -n day03 nginx-deployment --revision 3
k rollout history deployment -n day03 nginx-deployment --revision 4
k rollout history deployment -n day03 nginx-deployment
k get deployments.apps -n day03
k scale deployment -n day03 --replicas 3 nginx-deployment
k get deployments.apps -n day03