data "alicloud_resource_manager_resource_groups" "default" {}

data "alicloud_vpcs" "default" {
  name_regex = "^default-NODELETING$"
}

data "alicloud_vswitches" "default" {
  vpc_id = data.alicloud_vpcs.default.ids[0]
}

# Use the APIG module
module "apig" {
  source = "../../"

  # Resource configuration
  resource_group_id = data.alicloud_resource_manager_resource_groups.default.ids[0]
  vpc_id            = data.alicloud_vpcs.default.ids[0]
  vswitch_id        = data.alicloud_vswitches.default.ids[0]

  # Gateway configuration
  gateway_name = "terraform-apig-example"
  gateway_spec = "apigw.small.x1"

  # HTTP API configuration
  create_http_api      = true
  http_api_name        = "terraform-http-api-example"
  http_api_protocols   = ["HTTP"]
  http_api_base_path   = "/v1"
  http_api_description = "Example HTTP API created by Terraform"

  # Environment configuration
  create_environment      = true
  environment_name        = "RELEASE"
  environment_description = "Release environment"
}
