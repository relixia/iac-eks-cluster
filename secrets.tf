# secrets.tf
data "aws_secretsmanager_secret" "nottobeused" {
  name = "nottobeused"
}

data "aws_secretsmanager_secret_version" "nottobeused_version" {
  secret_id = data.aws_secretsmanager_secret.nottobeused.id
}

output "studycase_secret_value" {
  value = data.aws_secretsmanager_secret_version.nottobeused_version.secret_string
}
