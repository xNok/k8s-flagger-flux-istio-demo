# k8s-flagger-flux-istio-demo

Experiments arround Flagger + flux + istio

## Playing with the demo

Install flux -> [Flux Get Started](https://fluxcd.io/flux/get-started/)

Set env variables:

```
export GITHUB_TOKEN=
export GITHUB_USER=
```

Use flux CLI to setup everything

```
flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=k8s-flagger-flux-istio-demo \
  --branch=main \
  --path=./clusters/minikube \
  --personal
```

## Load Testing

Install [k6](https://k6.io/docs/get-started/installation/)

```
k6 run -e MY_HOSTNAME=${INGRESS_IP} loadtesting/productpage/productpage.js
```

## Monitoring Kiali / Graphana

```
istioctl dashboard kiali
```

```
kubectl -n istio-system port-forward svc/grafana 3000:80
```

## Scenarios - Experiments

### Rollout

## Resources

- https://github.com/stefanprodan/gitops-istio
