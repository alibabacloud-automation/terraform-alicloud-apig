output "gateway_id" {
  description = "The ID of the APIG gateway."
  value       = module.apig.gateway_id
}

output "gateway_name" {
  description = "The name of the APIG gateway."
  value       = module.apig.gateway_name
}

output "gateway_status" {
  description = "The status of the APIG gateway."
  value       = module.apig.gateway_status
}

output "http_api_id" {
  description = "The ID of the HTTP API."
  value       = module.apig.http_api_id
}

output "http_api_name" {
  description = "The name of the HTTP API."
  value       = module.apig.http_api_name
}

output "environment_id" {
  description = "The ID of the environment."
  value       = module.apig.environment_id
}

output "environment_name" {
  description = "The name of the environment."
  value       = module.apig.environment_name
}
