kubectl apply -f manifests_no_configs/exporter.yaml
kubectl create namespace monitoring
kubectl create configmap prometheus-example-cm --from-file configs/prometheus.yml -n monitoring
kubectl apply -f manifests_no_configs/prometheus.yamlkubectl create configmap prometheus-adapter-example-cm --from-file configs/prometheus_adapter.yml
kubectl apply -f manifests_no_configs/prometheus_adapter.yaml
