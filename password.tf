resource "okta_policy_password" "employee_policy" {
    name = "Employee Policy"
    description = "The basic policy, 8 characters, 1 number, 1 uppercase, 1 special"

    #Inactive to see it's final form
    status = "ACTIVE"
    
    groups_included = ["${data.okta_group.jaegerists.id}", "${data.okta_group.everyone.id}"]

    #Password conditions
    password_min_length = 8
    password_min_lowercase = 1
    password_min_uppercase = 1
    password_min_symbol = 1
    password_min_number = 1
    password_exclude_username = true
    password_exclude_first_name = true
    password_exclude_last_name = true
    password_dictionary_lookup = true
    password_max_age_days = 0
    password_min_age_minutes = 60
    
    #Lockout conditions
    password_show_lockout_failures = true
    password_max_lockout_attempts = 10
    password_auto_unlock_minutes = 60

    #Recovery
  
}

resource "okta_policy_rule_password" "employee_password_policy_rule" {
    policy_id = "${data.okta_policy.data_employee_policy.id}"
    name = "Employee Rule"
    status = "ACTIVE"
    priority = 1
    password_change = "ALLOW"
    password_reset = "ALLOW"
    password_unlock = "ALLOW"
    network_connection = "ANYWHERE"
}

data "okta_group" "jaegerists" {
    name = "Team-Jaegerists"
}

data "okta_group" "everyone" {
    name = "Everyone"
}

data "okta_policy" "data_employee_policy"{
    name = "Employee Policy"
    type = "PASSWORD"
}