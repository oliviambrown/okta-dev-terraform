resource "okta_group" "space-group" {
    name = "space_group"
    description = "${var.terraform-warning}"
    custom_profile_attributes = jsonencode({
        "tfManaged" = true
    })
}