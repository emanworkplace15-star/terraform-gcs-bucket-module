variable "bucket_name" {
  description = "Unique GCS bucket name"
  type        = string
}

variable "location" {
  description = "Bucket location"
  type        = string
}

variable "uniform_bucket_level_access" {
  description = "Enable uniform bucket-level access"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Force destroy of the bucket"
  type        = bool
  default     = true
}

variable "bucket_access" {
  type        = string
  description = "Bucket access level: public or private"
  validation {
    condition     = contains(["public", "private"], var.bucket_access)
    error_message = "bucket_access must be either 'public' or 'private'"
  }
}