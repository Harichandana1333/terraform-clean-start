resource "google_compute_firewall" "default" {
  name    = "firewall-trail5"
  network = google_compute_network.vpc_network5.name
  project = var.project_n

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    #ports    = ["80", "8080", "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}
