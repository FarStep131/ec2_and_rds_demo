# サブネットから外に出る通信をどこに向けて発信するかルール、定義
resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.my-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
}

resource "aws_route_table_association" "puclic-1a" {
  subnet_id      = aws_subnet.public-subnet-1a.id
  route_table_id = aws_route_table.my-rt.id
}

resource "aws_route_table_association" "puclic-1c" {
  subnet_id      = aws_subnet.public-subnet-1c.id
  route_table_id = aws_route_table.my-rt.id
}
