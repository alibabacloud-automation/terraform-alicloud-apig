# terraform-alicloud-apig

[English](https://github.com/alibabacloud-automation/terraform-alicloud-apig/blob/main/README.md) | 简体中文

在阿里云上创建 APIG 资源的 Terraform 模块。此模块支持创建 APIG 网关、HTTP API 和环境配置，帮助您快速构建和管理 API 网关服务。

## 使用方法

此模块允许您创建 APIG 网关、HTTP API 和环境。您可以使用它来设置完整的 API 网关基础设施。

```terraform
module "apig" {
  source = "alibabacloud-automation/apig/alicloud"

  # 网关配置（必需）
  gateway_name = "my-apig-gateway"

  # 可选配置
  # resource_group_id = ""
  # vpc_id            = ""
  # vswitch_id        = ""
  # gateway_spec      = "apigw.small.x1"

  # HTTP API 配置
  # create_http_api      = true
  # http_api_name        = "my-http-api"
  # http_api_base_path   = "/v1"

  # 环境配置
  # create_environment      = true
  # environment_name        = "RELEASE"
  # environment_description = "Release environment"
}
```

## 示例

* [完整示例](https://github.com/alibabacloud-automation/terraform-alicloud-apig/tree/main/examples/complete)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.212.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.212.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_apig_environment.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/apig_environment) | resource |
| [alicloud_apig_gateway.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/apig_gateway) | resource |
| [alicloud_apig_http_api.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/apig_http_api) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_environment"></a> [create\_environment](#input\_create\_environment) | Whether to create an environment. Default is `true`. | `bool` | `true` | no |
| <a name="input_create_http_api"></a> [create\_http\_api](#input\_create\_http\_api) | Whether to create an HTTP API. Default is `true`. | `bool` | `true` | no |
| <a name="input_environment_description"></a> [environment\_description](#input\_environment\_description) | The description of the environment. | `string` | `""` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | The name of the environment. | `string` | `""` | no |
| <a name="input_gateway_name"></a> [gateway\_name](#input\_gateway\_name) | The name of the APIG gateway. | `string` | n/a | yes |
| <a name="input_gateway_network_type"></a> [gateway\_network\_type](#input\_gateway\_network\_type) | The network access type of the APIG gateway. Default is `Intranet`. | `string` | `"Intranet"` | no |
| <a name="input_gateway_payment_type"></a> [gateway\_payment\_type](#input\_gateway\_payment\_type) | The payment type of the APIG gateway. Default is `PayAsYouGo`. | `string` | `"PayAsYouGo"` | no |
| <a name="input_gateway_sls_log_enable"></a> [gateway\_sls\_log\_enable](#input\_gateway\_sls\_log\_enable) | Whether to enable SLS log for the APIG gateway. Default is `false`. | `string` | `"false"` | no |
| <a name="input_gateway_spec"></a> [gateway\_spec](#input\_gateway\_spec) | The specification of the APIG gateway. Default is `apigw.small.x1`. | `string` | `"apigw.small.x1"` | no |
| <a name="input_gateway_zone_select_option"></a> [gateway\_zone\_select\_option](#input\_gateway\_zone\_select\_option) | The zone selection option of the APIG gateway. Default is `Auto`. | `string` | `"Auto"` | no |
| <a name="input_http_api_base_path"></a> [http\_api\_base\_path](#input\_http\_api\_base\_path) | The base path of the HTTP API. Default is `/v1`. | `string` | `"/v1"` | no |
| <a name="input_http_api_description"></a> [http\_api\_description](#input\_http\_api\_description) | The description of the HTTP API. | `string` | `""` | no |
| <a name="input_http_api_name"></a> [http\_api\_name](#input\_http\_api\_name) | The name of the HTTP API. | `string` | `""` | no |
| <a name="input_http_api_protocols"></a> [http\_api\_protocols](#input\_http\_api\_protocols) | The protocols of the HTTP API. Default is `["HTTP"]`. | `list(string)` | <pre>[<br/>  "HTTP"<br/>]</pre> | no |
| <a name="input_http_api_type"></a> [http\_api\_type](#input\_http\_api\_type) | The type of the HTTP API. Default is `Rest`. | `string` | `"Rest"` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | The ID of the resource group. | `string` | `""` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC. | `string` | `""` | no |
| <a name="input_vswitch_id"></a> [vswitch\_id](#input\_vswitch\_id) | The ID of the vSwitch. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment_id"></a> [environment\_id](#output\_environment\_id) | The ID of the environment. |
| <a name="output_environment_name"></a> [environment\_name](#output\_environment\_name) | The name of the environment. |
| <a name="output_gateway_id"></a> [gateway\_id](#output\_gateway\_id) | The ID of the APIG gateway. |
| <a name="output_gateway_name"></a> [gateway\_name](#output\_gateway\_name) | The name of the APIG gateway. |
| <a name="output_gateway_status"></a> [gateway\_status](#output\_gateway\_status) | The status of the APIG gateway. |
| <a name="output_http_api_id"></a> [http\_api\_id](#output\_http\_api\_id) | The ID of the HTTP API. |
| <a name="output_http_api_name"></a> [http\_api\_name](#output\_http\_api\_name) | The name of the HTTP API. |
<!-- END_TF_DOCS -->

## 提交问题

如果您在使用此模块时遇到任何问题，请提交一个 [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) 并告知我们。

**注意：** 不建议在此仓库中提交问题。

## 作者

由阿里云 Terraform 团队创建和维护 (terraform@alibabacloud.com)。

## 许可证

MIT 许可。有关完整详细信息，请参阅 LICENSE。

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
* [APIG 网关文档](https://www.aliyun.com/product/apigateway)