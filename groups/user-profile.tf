resource "okta_user_schema_property" "okta_user_test" {
  index = "tfProp"
  title = "Terraform"
  type = "string"
  enum = ["alpha", "beta", "charlie", "delta"]
  description = "Property managed by TF"
  master = "OKTA"
  permissions = "READ_WRITE"

}

resource "okta_user_schema_property" "okta_user_schema_custom" {
    index = "customProperty"
    title = "custom"
    type = "array"
    description = "${var.terraform-warning}"
    master = "OKTA"
    permissions = "READ_WRITE"

    array_enum = ["a", "b", "c", "d"]
}