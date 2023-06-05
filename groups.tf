resource "okta_group" "survey_corps" {
    name = "Survey Corps"
    description = "The Titan Fighters, Explorers"
  
}

resource "okta_group" "military_police" {
    name = "Military Police"
    description = "Personal Guards, Inner wall police"
  
}

resource "okta_group" "garrison_regiment" {
    name = "Garrison Regiment"
    description = "Guards and maintains walls"
}