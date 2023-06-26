resource "okta_group" "survey_corps" {
    name = "Team-Survey Corps"
    description = "The Titan Fighters, Explorers"
  
}

resource "okta_group" "military_police" {
    name = "Team-Military Police"
    description = "Personal Guards, Inner wall police"
  
}

resource "okta_group" "garrison_regiment" {
    name = "Team-Garrison Regiment"
    description = "Guards and maintains walls"
}

resource "okta_group" "jaegerists" {
    name = "Team-Jaegerists"
    description = "Rebel Faction"
}

resource "okta_group" "marleyan_military" {
    name = "Team-Marleyan Military"
    description = "Comboed armed forces of Marley"
}

resource "okta_group" "warriors" {
    name = "Team-Warriors"
    description = "Special Marleyan Unit containing Subjects of Ymir"
}

resource "okta_group" "marley_public_security" {
    name = "Team-Marley Public Security"
    description = "Maintains order in Liberio"
}

resource "okta_group" "Ducks" {
    name = "Team-Ducks"
    description = "The Might Ducks: we play hockey"
}

resource "okta_group" "spacelift_access" {
    name = "App-Spacelift-access"
    description = "Spacelift Basic Access"
}

resource "okta_group" "world_travelers" {
    name = "Okta-World Travelers"
    description = "Travelers who need stricter MFA policies applied."

}


