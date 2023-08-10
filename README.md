<!-- BEGIN_TF_DOCS -->
# terraform-aws-default-tags
Terraform Module to Standardize the Tags used on AWS Resources

## Usage

See [Examples Folder](examples/)

## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Primary identifier of the resource | `string` | n/a | yes |
| <a name="input_source_project"></a> [source\_project](#input\_source\_project) | Link to source project of resource | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asg_tags"></a> [asg\_tags](#output\_asg\_tags) | List of Map type object of tags for AutoScaling Groups |
| <a name="output_tags"></a> [tags](#output\_tags) | Map type object of tags |
<!-- END_TF_DOCS -->