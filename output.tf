# Elastic IPアドレスを出力
output "eip" {
  value = aws_eip.my-eip.public_ip
}

# RDSのエンドポイントを出力
output "rds-endpoint" {
  value = aws_db_instance.my-db.endpoint
}
