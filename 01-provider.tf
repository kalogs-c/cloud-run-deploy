provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  # Comment out the next line if you don't want to use Cloud Storage bucket as backend
  # backend "gcs" {
  #   bucket = var.backend_bucket
  #   prefix = "terraform/state"
  # }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
