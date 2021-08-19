terraform {
  required_version = ">= 0.14"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider github {
  token = var.token
  owner = var.organization
}

data local_file input {
  filename = var.input_file
}

locals {
  teams = jsondecode(data.local_file.input.content).teams
}

module github_team {
  source = "./github_team"
  for_each = local.teams
  name = each.key
  member_list = each.value
}
