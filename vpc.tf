# Virtual Private Cloud (VPC)
# AWS アカウント専用の仮想ネットワーク

resource "aws_vpc" "my-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "my-vpc"
  }
}

# instance_tenancy
# デフォルトでは、AWS基盤側となるハードウェアは他の利用者と共有する状態で提供される。（共有ホスト）
# つまり、1台のホストを複数AWSアカウントで共有しているという状況

# enable_dns_support
# VPCのDNSサーバを有効にするかどうか

# enable_dns_hostnames
# VPC内に起動されるインスタンスがDNSホスト名を取得するかどうか
