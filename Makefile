
create-namespace:
	kubectl create namespace monitoring
monitor: create-namespace
	kubectl apply -f monitoring-stack/
empty-namespace:
	kubectl delete all --all -n monitoring && kubectl delete namespace monitoring
destroy:
	kubectl delete "$(kubectl api-resources --namespaced=true --verbs=delete -o name | tr "\n" "," | sed -e 's/,$//')" --all
