

Docs: https://kyverno.io/docs
1. Install Kyverno

helm repo add kyverno https://kyverno.github.io/kyverno
helm repo update
helm install kyverno kyverno/kyverno -n kyverno --create-namespace --set replicaCount=1
k get pod -n kyverno -w

2. Check CRD

kubectl get crd | grep kyverno

3.Create a policy
kubectl -f pod-require-name-label.yaml apply

4. Test policy (creation ingress pod )
kubectl run nginx --image=nginx