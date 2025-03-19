resource "okta_group" "refresh" {
  name = "Refresh group"
  description = "${var.terraform-warning} Reintroducing myself to TF"
}