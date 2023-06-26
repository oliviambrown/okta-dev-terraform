resource "okta_group_memberships" "ducks_membership" {
    group_id = okta_group.Ducks.id
    users = [ 
        okta_user.armin.id,
        okta_user.mikasa.id
        
    ]
}

resource "okta_group_memberships" "mongodb_access_membership" {
    group_id = okta_group.mongodb_access.id
    users = [
        okta_user.historia.id,
        okta_user.eren.id,
        okta_user.erwin.id
    ]
  
}