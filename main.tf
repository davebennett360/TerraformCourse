variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_01_b3c5e6ecdeb6-24713-9522"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "dave-vpc"
  auto_create_subnetworks = true 
}
