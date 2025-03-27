resource "okta_policy_password_default" "default_pw" {
    password_min_length = 9
    password_exclude_username = true
    password_dictionary_lookup = true
    password_history_count = 5
    password_max_lockout_attempts = 11
}

resource "okta_policy_password" "ad_pw" {
    name = "Active Directory Policy"
    status = "ACTIVE"
    auth_provider = "ACTIVE_DIRECTORY"
    password_min_length = 9
    password_exclude_username = true
    password_dictionary_lookup = true
    password_history_count = 5
    password_max_lockout_attempts = 11
  
}