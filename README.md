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

## Resources

- https://github.com/stefanprodan/gitops-istio
