
resource "okta_group" "test-group" {
  name = "test-group"
  description = "${var.terraform-warning}"
  
}