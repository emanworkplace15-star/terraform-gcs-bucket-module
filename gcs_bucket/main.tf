resource "google_storage_bucket" "this" {
  name     = var.bucket_name
  location = var.location
  
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
}

resource "google_storage_bucket_iam_member" "public_access" {
  count  = var.bucket_access == "public" ? 1 : 0

  bucket = google_storage_bucket.this.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
