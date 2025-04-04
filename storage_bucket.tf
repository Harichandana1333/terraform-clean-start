 resource "google_storage_bucket" "hari_bucket_6" {
   name          = "hari_bucket_6"
   location      = "US"
    force_destroy = true


    uniform_bucket_level_access = true
   project      = var.project_n
  

     website {
        main_page_suffix = "index.html"
        not_found_page   = "404.html"
      }
      cors {
       origin          = ["http://image-store.com"]
       method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
       response_header = ["*"]
       max_age_seconds = 3600
      }
 }

