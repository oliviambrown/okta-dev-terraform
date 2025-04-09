resource "okta_group" "admin" {
  name = "okta_admin_super"
  description = "${var.terraform-warning} Super Admin group"

}

resource "okta_group_memberships" "olivia-super-membership" {
  group_id = okta_group.admin.id
  users = [
      data.okta_user.olivia.id
  ]
}