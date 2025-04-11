resource "okta_group" "reiss_okta_group" {
  name = "reiss_group"
  description = "${var.terraform-warning}"
}

resource "okta_group_rule" "reiss_group_rule" {
  name = "rule_reiss"
  status = "ACTIVE"
  group_assignments = [okta_group.reiss_okta_group.id]
  expression_type = "urn:okta:expression:1.0"
  expression_value = "String.stringContains(user.login, \"reiss\")"

}