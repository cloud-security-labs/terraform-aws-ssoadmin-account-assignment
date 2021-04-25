# Terraform AWS SSOAdmin Account Assignment


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                    | Version   |
| ------------------------------------------------------- | --------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.35.0 |

## Providers

| Name                                              | Version   |
| ------------------------------------------------- | --------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.35.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                            | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_ssoadmin_account_assignment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_account_assignment) | resource |

## Inputs

| Name                                                                                         | Description                                                                                                                                 | Type           | Default         | Required |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | --------------- | :------: |
| <a name="input_instance_arn"></a> [instance\_arn](#input\_instance\_arn)                     | (Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance.                                                         | `string`       | n/a             |   yes    |
| <a name="input_permission_set_arn"></a> [permission\_set\_arn](#input\_permission\_set\_arn) | (Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to. | `string`       | n/a             |   yes    |
| <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id)                     | (Required, Forces new resource) An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs                         | `string`       | n/a             |   yes    |
| <a name="input_principal_type"></a> [principal\_type](#input\_principal\_type)               | (Required, Forces new resource) The entity type for which the assignment will be created. Valid values: USER, GROUP.                        | `string`       | n/a             |   yes    |
| <a name="input_target_ids"></a> [target\_ids](#input\_target\_ids)                           | (Required, Forces new resource) the list of An AWS account identifier, typically a 10-12 digit string.                                      | `list(string)` | n/a             |   yes    |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type)                        | (Optional, Forces new resource) The entity type for which the assignment will be created. Valid values: AWS\_ACCOUNT                        | `string`       | `"AWS_ACCOUNT"` |    no    |

## Outputs

| Name                                             | Description      |
| ------------------------------------------------ | ---------------- |
| <a name="output_id"></a> [id](#output\_id)       | returns a string |
| <a name="output_this"></a> [this](#output\_this) | n/a              |
<!-- END_TF_DOCS -->