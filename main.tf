# APIG Gateway
resource "alicloud_apig_gateway" "default" {
  gateway_name = var.gateway_name
  spec         = var.gateway_spec
  payment_type = var.gateway_payment_type

  resource_group_id = var.resource_group_id

  vpc {
    vpc_id = var.vpc_id
  }

  vswitch {
    vswitch_id = var.vswitch_id
  }

  network_access_config {
    type = var.gateway_network_type
  }

  zone_config {
    select_option = var.gateway_zone_select_option
  }

  log_config {
    sls {
      enable = var.gateway_sls_log_enable
    }
  }
}

# APIG HTTP API
resource "alicloud_apig_http_api" "default" {
  count = var.create_http_api ? 1 : 0

  http_api_name = coalesce(var.http_api_name, var.gateway_name)
  protocols     = var.http_api_protocols
  base_path     = var.http_api_base_path
  description   = var.http_api_description
  type          = var.http_api_type
}

# APIG Environment
resource "alicloud_apig_environment" "default" {
  count = var.create_environment ? 1 : 0

  gateway_id        = alicloud_apig_gateway.default.id
  environment_name  = coalesce(var.environment_name, var.gateway_name)
  description       = var.environment_description
  resource_group_id = var.resource_group_id
}
