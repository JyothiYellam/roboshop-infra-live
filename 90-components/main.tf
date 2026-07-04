module "component" {
    for_each = var.components
    source = "git::https://github.com/JyothiYellam/roboshop-infra-live.git"
    component = each.key
    rule_priority = each.value.rule_priority
}