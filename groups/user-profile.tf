resource "okta_user_schema_property" "okta_user_test" {
  index = "tfProp"
  title = "Terraform"
  type = "string"
  enum = ["alpha", "beta", "charlie"]
  description = "Property managed by TF"
  master = "OKTA"
  permissions = "READ_WRITE"

}