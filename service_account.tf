# TASK:1

# Service account and Secret Manager Assignment
# Service account creation
# Service account key generate
# secret manager Secret
# secret manager secret version

resource "google_service_account" "hari_service_account_gcp1" {
  account_id   = var.account_id
  project      = var.project_n
  display_name = var.display_name
}

resource "google_service_account_key" "hari_service_account_key1" {
  service_account_id = google_service_account.hari_service_account_gcp1.name
}

resource "google_secret_manager_secret" "hari_service_account_key_secret1" {
  secret_id = "service_account_key"
  project   = var.project_n

  labels = {
    secretmanager = "service_account_key"
  }

  replication {
    auto{}
  }
}

resource "google_secret_manager_secret_version" "hari_service_account_key_version11" {
  secret      = google_secret_manager_secret.hari_service_account_key_secret1.id
  secret_data = google_service_account_key.hari_service_account_key1.private_key
}

resource "google_secret_manager_secret_version" "custom_service_account_key_version12" {
  secret      = google_secret_manager_secret.hari_service_account_key_secret1.id
  secret_data = "Harichandana Gattamaneni"
}

# End of TASK:1
