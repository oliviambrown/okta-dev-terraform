resource "okta_user_schema_property" "okta_user_test" {
  index = "tfProp"
  title = "Terraform"
  type = "string"
  enum = ["alpha", "beta", "charlie", "delta"]
  description = "Property managed by TF"
  master = "OKTA"
  permissions = "READ_WRITE"

}

resource "okta_user_schema_property" "okta_user_array_enum" {
   index = "arrayEnumTest"
   title = "arrayEnum"
   type = "string"
   description = "${var.terraform-warning}"
   array_enum = ["a", "b", "c", "d"]
   master = "OKTA" 
  
}