# Internet Gateway
# VPC内部とインターネットとの間の通信を可能にする。
resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "my-igw"
  }
}
