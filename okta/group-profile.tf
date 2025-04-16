#Attribute to know group is managed by TF.
resource "okta_group_schema_property" "tf_manage_attribute" {
    index = "tfManaged"
    title = "TF Managed"
    type  = "boolean"
}