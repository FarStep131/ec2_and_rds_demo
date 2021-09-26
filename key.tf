resource "aws_key_pair" "my-kp" {
  key_name   = "ec2_and_rds_demo_rsa"
  public_key = file("ec2_and_rds_demo_rsa.pub")
}
