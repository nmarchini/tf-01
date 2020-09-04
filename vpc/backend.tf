terraform {
  backend "remote" {
    organization = "Slalom-uk-cds-nickmarchini"
    workspaces {
      name = "tf-01"
    }
  }