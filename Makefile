plan:
	terraform plan -out terraform.plan -var-file=terraform.tfvars

apply:
	terraform apply terraform.plan
