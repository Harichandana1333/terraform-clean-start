resource "google_compute_instance" "hari-instance5" {
  name         = "hari-instance5"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  project      = var.project_n
  tags = ["http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }
 network_interface {
    network    = google_compute_network.vpc_network5.self_link
    subnetwork = google_compute_subnetwork.sub_network5.self_link
  }
}
