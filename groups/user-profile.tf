resource "okta_user_base_schema_property" "okta_user_test" {
   index = "terraformProp"
   title = "Terrafrom Property"
   type = "string"
   description = "Attribute from Terraform"
   array_enum = ["alpha", "beta", "charlie"]
   master = "OKTA" 
   permissions = "READ_WRITE"
}
