variable "assessment_region" {
  type    = "string"
  default = "us-west1"
}

variable "assessment_zone" {
  type    = "string"
  default = "us-west1-b"
}

variable "assessment_base_image" {
  type    = "string"
  default = "assessement-1539858879"
}

variable "assessment_project_id" {
  type    = "string"
  default = "scott-assessment"
}

variable "assessment_credential_file" {
  type    = "string"
  default = "/Users/scotty/Desktop/scott.json"
}

variable "assessment_ip_cidr_range" {
  type    = "string"
  default = "10.0.0.0/24"
}

variable "assessment_service_account_email" {
  type    = "string"
  default = "scottassess@scott-assessment.iam.gserviceaccount.com"
}

variable "assessment_machine_type" {
  type    = "string"
  default = "g1-small"
}
