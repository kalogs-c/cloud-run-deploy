variable "project_id" {
  type        = string
  description = "Project ID"
}

variable "region" {
  type        = string
  description = "Region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Zone"
  default     = "us-central1-a"
}

variable "backend_bucket" {
  type        = string
  description = "Backend Cloud Storage bucket name"
  default     = "terraform-state"
}

variable "app_name" {
  type        = string
  description = "App name"
}

variable "image" {
  type        = string
  description = "Container app image"
}
