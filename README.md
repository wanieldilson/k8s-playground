# k8s-playground

## Summary
This repo assumed you have a working k8s cluster (in my case minikube) with access using `kubectl`.  It contains a set of k8s manifests that will allow you to deploy monitoring to a local cluster.

### Usage
Clone the repo and run `Make monitor` this will deploy prometheus, kube-state-metrics and grafana to your cluster.  Grafana will be available at http://<<your-node-ip>>:32000

To visualise your k8s metrics simply import [this dashboard](https://grafana.com/grafana/dashboards/8588) into your grafana instance.
