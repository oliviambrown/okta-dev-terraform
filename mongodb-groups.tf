resource "okta_group" "mongodb_member_project_0" {
    name = "App-Atlas-Member-Project 0-Read Only"
    description = "MongoDB Atlas Member Project 0 Readonly access" 
}

resource "okta_group" "mongodb_billing_viewer" {
    name = "App-Atlas-Billing Viewer"
    description = "MongoDB Atlas Org Billing Viewer Role"
}
resource "okta_group" "mongodb_owner" {
    name = "App-Atlas-Owner"
    description = "MongoDB Atlas Org Owner Role"
}
resource "okta_group" "mongodb_project_creator" {
    name = "App-Atlas-Project Creator"
    description = "MongoDB Atlas Org Project Creator Role"
}
resource "okta_group" "mongodb_billing_admin" {
    name = "App-Atlas-Billing Admin"
    description = "MongoDB Atlas Org Billing Admin Role"
}
resource "okta_group" "mongodb_read_only" {
    name = "App-Atlas-Read Only"
    description = "MongoDB Atlas Org Read Only Role"
}

resource "okta_group" "mongodb_member" {
    name = "App-Atlas-Member"
    description = "MongoDB Atlas Org Member Role"
}

resource "okta_group" "mongodb_access" {
    name = "App-Atlas-Access"
    description = "MongoDB Atlas Application Assignment/Access"
}