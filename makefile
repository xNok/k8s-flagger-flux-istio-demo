
FLUX_VERSION = v0.27.0
CLUSTER = minikube
GITHUB_USER = xNok

install:
	flux bootstrap github \
	--owner=${GITHUB_USER} \
	--repository=k8s-flagger-flux-istio-demo \
	--branch=main \
	--path=./clusters/minikube \
	--personal

upgrade:
	@docker run -v ${PWD}:/flux ghcr.io/fluxcd/flux-cli:$(FLUX_VERSION) install \
		--export > ./clusters/${CLUSTER}/flux-system/gotk-components.yaml