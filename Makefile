.PHONY: generate
generate:
	npx openapi-merger \
		-i spec/v1/pagination.yaml \
		-i spec/v1/clusters.yaml \
		-i spec/v1/organizations.yaml \
		-i spec/v1/tenants.yaml \
		-i spec/v1/integrationproviders.yaml \
		-i spec/v1/portals.yaml \
		-i spec/v1/integrations.yaml \
		-i spec/v1/catalogproviders.yaml \
		-i spec/v1/plugins.yaml \
		-i spec/v1/authproviders.yaml \
		-i spec/v1/api.yaml \
		-o generated/v1/api.gen.yaml
	npx openapi-flattener -s generated/v1/api.gen.yaml -o generated/v1/api.flat.gen.yaml


.PHONY: dev-build
dev-build:
	 npx nodemon -V -L --watch './spec/*' --ext 'yaml' --exec 'bash ./devbuild.sh'
