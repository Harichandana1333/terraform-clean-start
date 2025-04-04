terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.13.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "google" {
  project = var.project_n
  region  = "us-central1"
}
