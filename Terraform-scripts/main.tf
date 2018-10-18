provider "google" {
  credentials = "${file("${var.assessment_credential_file}")}"
  project     = "${var.assessment_project_id}"
  region      = "${var.assessment_region}"
}
