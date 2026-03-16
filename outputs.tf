output "gateway_id" {
  description = "The ID of the APIG gateway."
  value       = alicloud_apig_gateway.default.id
}

output "gateway_name" {
  description = "The name of the APIG gateway."
  value       = alicloud_apig_gateway.default.gateway_name
}

output "gateway_status" {
  description = "The status of the APIG gateway."
  value       = alicloud_apig_gateway.default.status
}

output "http_api_id" {
  description = "The ID of the HTTP API."
  value       = var.create_http_api ? alicloud_apig_http_api.default[0].id : null
}

output "http_api_name" {
  description = "The name of the HTTP API."
  value       = var.create_http_api ? alicloud_apig_http_api.default[0].http_api_name : null
}

output "environment_id" {
  description = "The ID of the environment."
  value       = var.create_environment ? alicloud_apig_environment.default[0].id : null
}

output "environment_name" {
  description = "The name of the environment."
  value       = var.create_environment ? alicloud_apig_environment.default[0].environment_name : null
}
