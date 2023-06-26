resource "okta_group_memberships" "ducks_membership" {
    group_id = okta_group.Ducks.id
    users = [ 
        okta_user.armin.id,
        okta_user.mikasa.id
        
    ]
}