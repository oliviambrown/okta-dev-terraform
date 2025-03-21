resource "okta_group" "reiss_okta_group" {
  name = "reiss_group"
  description = "${var.terraform-warning}"
}

resource "okta_group_rule" "reiss_group_rule" {
  name = "rule_reiss"
  status = "ACTIVE"
  group_assignments = [reiss_id]
  expression_type = "urn:okta:expression:1.0"
  expression_value = "String.stringContains(user.lastName, \"reiss\")"

}