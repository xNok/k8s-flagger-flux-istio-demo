
FLUX_VERSION = v0.27.0
CLUSTER = minikube

upgrade:
	@docker run -v ${PWD}:/flux ghcr.io/fluxcd/flux-cli:$(FLUX_VERSION) install \
		--export > ./clusters/${CLUSTER}/flux-system/gotk-components.yaml