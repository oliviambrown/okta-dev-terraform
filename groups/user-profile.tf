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

resource "okta_user_schema_property" "okta_user_schema_military" {
    index = "militaryBranch"
    title = "Military Branch"
    type = "string"
    description = "${var.terraform-warning}"
    master = "OKTA"
    permissions = "READ_ONLY"

    enum = ["scouts", "garrison", "military_police"]
    one_of {
      const = "scouts"
      title = "Survey Corps"
    }
    one_of {
      const = "garrison"
      title = "Garrison"
    }

    one_of {
      const = "military_police"
      title = "Military Police"
    }
}

