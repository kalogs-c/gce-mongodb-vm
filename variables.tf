variable "project_id" {
  default = "YOUR_PROJECT_ID"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "mongo_username" {
  default = "admin"
}
variable "mongo_password" {
  default = "admin"
}
variable "with_volumes" {
  default = true
}

variable "ip_name" {
  default = "mongo-ip"
}
variable "address_type" {
  default = "EXTERNAL"
}

variable "vm_name" {
  default = "mongodb"
}
variable "machine_type" {
  default = "e2-medium"
}
