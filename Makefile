
CLUSTER_NAME := sandbox-cluster
NAME_FILE := kind.yaml

create_cluster:
	@echo "Creating a new cluster"
	kind create cluster --name=${CLUSTER_NAME} --config=${NAME_FILE}

delete_cluster:
	@echo "Deleting the cluster"
	kind delete cluster --name=${CLUSTER_NAME}