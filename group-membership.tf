resource "okta_group_memberships" "ducks_membership" {
    group_id = okta_group.ducks.id
    users = [ 
        okta_user.armin.id,
        okta.user.mikasa.id
    ]
}
