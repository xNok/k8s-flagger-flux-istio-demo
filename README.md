# k8s-flagger-flux-istio-demo

Experiments arround Flagger + flux + istio

## Playing with the demo

Install flux -> [Flux Get Started](https://fluxcd.io/flux/get-started/)

```
flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=k8s-flagger-flux-istio-demo \
  --branch=main \
  --path=./clusters/minikube \
  --personal
```

Install `istioctl` and follow the [Get started Guide](https://istio.io/latest/docs/setup/getting-started/#install)

```
istioctl manifest install --set profile=default
```

Install Prometheus

```
kubectl apply -f prometheus.yaml
```

Install flagger

## Resources

- https://github.com/stefanprodan/gitops-istio
