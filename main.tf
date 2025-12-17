terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

resource "random_string" "example" {
  length  = 16
  special = false
  upper   = false
  lower   = true
}

output "example" {
  value = random_string.example.result
}
