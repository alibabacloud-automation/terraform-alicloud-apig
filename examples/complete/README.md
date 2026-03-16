# Complete Example

This example shows how to use the terraform-alicloud-apig module to create a complete APIG setup with gateway, HTTP API, and environment.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

## Configuration

The example demonstrates:

- Creating an APIG gateway with specified spec and network configuration
- Creating an HTTP API with custom protocols and base path
- Creating an environment for API deployment

## Resources Created

This example creates:

- 1 APIG Gateway
- 1 HTTP API
- 1 Environment

## Outputs

After successful deployment, you will see outputs including:

- APIG Gateway ID, name and status
- HTTP API ID and name
- Environment ID and name

## Clean Up

To destroy the resources created by this example:

```bash
$ terraform destroy
```
