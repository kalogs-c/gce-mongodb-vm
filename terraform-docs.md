## Requirements

No requirements.

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider_google) | 4.68.0  |

## Modules

| Name                                                                       | Source                                       | Version |
| -------------------------------------------------------------------------- | -------------------------------------------- | ------- |
| <a name="module_gce-container"></a> [gce-container](#module_gce-container) | terraform-google-modules/container-vm/google | ~> 2.0  |

## Resources

| Name                                                                                                                                | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [google_compute_instance.mongo-vm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource    |
| [google_compute_address.mongo](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_address)   | data source |

## Inputs

| Name                                                                        | Description | Type     | Default             | Required |
| --------------------------------------------------------------------------- | ----------- | -------- | ------------------- | :------: |
| <a name="input_address_type"></a> [address_type](#input_address_type)       | n/a         | `string` | `"EXTERNAL"`        |    no    |
| <a name="input_ip_name"></a> [ip_name](#input_ip_name)                      | n/a         | `string` | `"mongo-ip"`        |    no    |
| <a name="input_machine_type"></a> [machine_type](#input_machine_type)       | n/a         | `string` | `"e2-medium"`       |    no    |
| <a name="input_mongo_password"></a> [mongo_password](#input_mongo_password) | n/a         | `string` | `"admin"`           |    no    |
| <a name="input_mongo_username"></a> [mongo_username](#input_mongo_username) | n/a         | `string` | `"admin"`           |    no    |
| <a name="input_project_id"></a> [project_id](#input_project_id)             | n/a         | `string` | `"YOUR_PROJECT_ID"` |    no    |
| <a name="input_region"></a> [region](#input_region)                         | n/a         | `string` | `"us-central1"`     |    no    |
| <a name="input_vm_name"></a> [vm_name](#input_vm_name)                      | n/a         | `string` | `"mongodb"`         |    no    |
| <a name="input_with_volumes"></a> [with_volumes](#input_with_volumes)       | n/a         | `bool`   | `true`              |    no    |
| <a name="input_zone"></a> [zone](#input_zone)                               | n/a         | `string` | `"us-central1-a"`   |    no    |

## Outputs

No outputs.
