resource "okta_group" "space-group" {
  name = "space-group"
  description = "${var.terraform-warning}"
  
}