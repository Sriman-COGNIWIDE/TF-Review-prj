data "terraform_remote_state" "nets" {
  backend = "s3"
  config = {
    bucket = "home-bucks-tfs"
    key    = "nets-nw/nets-nw.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "dbs" {
  backend = "s3"
  config = {
    bucket = "home-bucks-tfs"
    key    = "nets-db/nets-db.tfstate"
    region = "us-east-1"
  }
}

data "aws_secretsmanager_secret" "lambda_credentials" {
  name = "rds_credentials"
}

data "aws_secretsmanager_secret_version" "lambda_credentials" {
  secret_id = data.aws_secretsmanager_secret.lambda_credentials.id
}

