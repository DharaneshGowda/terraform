terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

#Configure the Harness provider for First Gen resources
provider "harness" {
  endpoint   = "https://app.harness.io/gateway"
  account_id = var.account_id
  platform_api_key = var.account_api_key
}

resource "harness_platform_project" "project" {
    name = "Project_1"
    identifier = "terraform_test_pro"
    org_id =  "default"
}
