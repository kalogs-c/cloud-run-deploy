## Requirements

| Name                                                            | Version |
| --------------------------------------------------------------- | ------- |
| <a name="requirement_google"></a> [google](#requirement_google) | ~> 4.0  |

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider_google) | ~> 4.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                             | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_cloud_run_service.app](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service)                                 | resource |
| [google_cloud_run_service_iam_member.run_all_users](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service_iam_member) | resource |
| [google_project_service.run_api](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service)                                 | resource |

## Inputs

| Name                                                                        | Description                       | Type     | Default             | Required |
| --------------------------------------------------------------------------- | --------------------------------- | -------- | ------------------- | :------: |
| <a name="input_app_name"></a> [app_name](#input_app_name)                   | App name                          | `string` | n/a                 |   yes    |
| <a name="input_backend_bucket"></a> [backend_bucket](#input_backend_bucket) | Backend Cloud Storage bucket name | `string` | `"terraform-state"` |    no    |
| <a name="input_image"></a> [image](#input_image)                            | Container app image               | `string` | n/a                 |   yes    |
| <a name="input_project_id"></a> [project_id](#input_project_id)             | Project ID                        | `string` | n/a                 |   yes    |
| <a name="input_region"></a> [region](#input_region)                         | Region                            | `string` | `"us-central1"`     |    no    |
| <a name="input_zone"></a> [zone](#input_zone)                               | Zone                              | `string` | `"us-central1-a"`   |    no    |

## Outputs

| Name                                                                 | Description |
| -------------------------------------------------------------------- | ----------- |
| <a name="output_service_url"></a> [service_url](#output_service_url) | n/a         |
