resource "okta_group" "okta-group" {
  name = "okta-group"
  description = "${var.terraform-warning}"
}