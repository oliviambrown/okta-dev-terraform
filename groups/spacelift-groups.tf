resource "okta_group" "spacelift_project_star_access" {
    name = "App-Spacelift-Project-Star-Access"
    description = "Spacelift Project Star Access"
}

resource "okta_group" "spacelift_project_okta_access" {
    name = "App-Spacelift-Project-Okta-Access"
    description = "Spacelift Project Okta Access"
}