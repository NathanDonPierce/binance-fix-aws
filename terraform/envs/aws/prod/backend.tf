terraform {
  backend "s3" {
    bucket         = "binance-ws-tfstate"
    key            = "envs/prod/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "binance-ws-tf-lock"
    encrypt        = true
    profile        = "binance-fix-project"
  }
}