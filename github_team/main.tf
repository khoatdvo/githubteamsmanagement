resource github_team team {
    name        = var.name
    description = var.name
    privacy     = "closed"
}

resource github_team_membership team_membership_of_users {
    for_each = var.member_list
    team_id  = github_team.team.id
    username = each.key
    role     = each.value
}

