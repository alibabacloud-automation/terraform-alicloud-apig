variable "resource_group_id" {
  description = "The ID of the resource group."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The ID of the vSwitch."
  type        = string
  default     = ""
}

variable "gateway_name" {
  description = "The name of the APIG gateway."
  type        = string
}

variable "gateway_spec" {
  description = "The specification of the APIG gateway. Default is `apigw.small.x1`."
  type        = string
  default     = "apigw.small.x1"
}

variable "gateway_payment_type" {
  description = "The payment type of the APIG gateway. Default is `PayAsYouGo`."
  type        = string
  default     = "PayAsYouGo"
}

variable "gateway_network_type" {
  description = "The network access type of the APIG gateway. Default is `Intranet`."
  type        = string
  default     = "Intranet"
}

variable "gateway_zone_select_option" {
  description = "The zone selection option of the APIG gateway. Default is `Auto`."
  type        = string
  default     = "Auto"
}

variable "gateway_sls_log_enable" {
  description = "Whether to enable SLS log for the APIG gateway. Default is `false`."
  type        = string
  default     = "false"
}

variable "create_http_api" {
  description = "Whether to create an HTTP API. Default is `true`."
  type        = bool
  default     = true
}

variable "http_api_name" {
  description = "The name of the HTTP API."
  type        = string
  default     = ""
}

variable "http_api_protocols" {
  description = "The protocols of the HTTP API. Default is `[\"HTTP\"]`."
  type        = list(string)
  default     = ["HTTP"]
}

variable "http_api_base_path" {
  description = "The base path of the HTTP API. Default is `/v1`."
  type        = string
  default     = "/v1"
}

variable "http_api_description" {
  description = "The description of the HTTP API."
  type        = string
  default     = ""
}

variable "http_api_type" {
  description = "The type of the HTTP API. Default is `Rest`."
  type        = string
  default     = "Rest"
}

variable "create_environment" {
  description = "Whether to create an environment. Default is `true`."
  type        = bool
  default     = true
}

variable "environment_name" {
  description = "The name of the environment."
  type        = string
  default     = ""
}

variable "environment_description" {
  description = "The description of the environment."
  type        = string
  default     = ""
}
