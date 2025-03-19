provider "okta" {
    org_name = var.org_name
    base_url = var.base_url
    client_id = var.client_id
    scopes = var.scopes
    private_key = "/mnt/workspace/rsa.pem"
}

resource "okta_group" "spacelift-group" {
  name = "spacelift-group"
  description = "${var.terraform-warning}"
}
