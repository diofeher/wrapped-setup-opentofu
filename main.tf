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

  # Forcing stop
  provisioner "local-exec" {
    command = "sleep 30"
  }
}

output "example" {
  value = random_string.example.result
}
