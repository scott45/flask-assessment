provider "google" {
  credentials = "${file("${var.assessment_credential_file}")}"
  project     = "${var.this}"
  region      = "${var.haha}"
}
