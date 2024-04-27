provider "google" {
  credentials = file("gcp-class-417400-9aae2903fb6d.json")
  project     = "gcp-class-417400"
  region      = "us-south1"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.90.1"
    }
  }

  required_version = ">= 0.12"
}
