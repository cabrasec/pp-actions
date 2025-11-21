terraform {
  required_version = ">= 1.0.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
  }
}

resource "null_resource" "print_desenvolvimento" {
  provisioner "local-exec" {
    command = "echo Dev"
  }

  triggers = {
    always_run = timestamp()
  }
}
