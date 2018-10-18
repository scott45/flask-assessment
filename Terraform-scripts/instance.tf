resource "google_compute_instance" "assessment-instance" {
  name         = "assessment-instance"
  machine_type = "${var.assessment_machine_type}"
  zone         = "${var.assessment_zone}"

  tags = ["assessment-instance"]

  boot_disk {
    initialize_params {
      image = "${var.assessment_base_image}"
    }
  }

  network_interface {
    network = "${google_compute_network.assessment-network.name}"

    access_config = {
      nat_ip       = ""
      network_tier = "PREMIUM"
    }
  }

  metadata {
    serviceAccountEmail = "${var.assessment_service_account_email}"
    serial-port-enable  = 1
  }

  service_account {
    email  = "${var.assessment_service_account_email}"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

resource "google_compute_firewall" "assessment_instance_firewall" {
  name    = "assessment-instance-firewall"
  network = "${google_compute_network.assessment-network.name}"

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "5000", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["assessment-instance"]
}
