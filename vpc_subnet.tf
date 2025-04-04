# TASK:2
# Create VPC network
# Create subnetworks to it(auto or custom)



resource "google_compute_network" "vpc_network5" {
  project                = var.project_n
  name                    = var.vpcname
  auto_create_subnetworks = false
  }

  resource "google_compute_subnetwork" "sub_network5" {
  project                = var.project_n
  name          = var.subnetname
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network5.id
  
}
