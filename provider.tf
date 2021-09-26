# AWSをプロバイダーとして設定
provider "aws" {
  profile = "terraform-user"
  region  = "ap-northeast-1"
}
