resource "okta_user_schema_property" "okta_user_schema_custom" {
    index = "customProperty"
    title = "custom"
    type = "string"
    description = "${var.terraform-warning}"
    master = "OKTA"
    permissions = "READ_WRITE"

    enum = ["a", "b"]
    one_of {
      const = "a"
      title = "aye"
    }
    one_of {
      const = "b"
      title = "bee"
    }
}