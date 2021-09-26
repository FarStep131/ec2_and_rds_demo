resource "aws_db_instance" "my-db" {
  engine                  = "MySQL"
  engine_version          = "5.7.30"
  identifier              = "sample-db"
  name                    = "sample_db"
  username                = "root"
  password                = "password"
  instance_class          = "db.t2.micro"
  storage_type            = "gp2"
  allocated_storage       = 20
  max_allocated_storage   = 1000
  port                    = 3306
  backup_retention_period = 7
  copy_tags_to_snapshot   = true
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.rds-sg.id]
  parameter_group_name    = aws_db_parameter_group.db-pg.name
  db_subnet_group_name    = aws_db_subnet_group.db-sg.name
  availability_zone       = "ap-northeast-1a"
}

# engine
# エンジンのタイプ

# engine_version
# エンジンバージョン

# identifier
# DBインスタンス識別

# username
# マスターユーザー名

# password
# マスターパスワード

# instance_class
# DBインスタンスクラス

# storage_type
# ストレージタイプ
# gp2はEC2インスタンスが利用するデフォルトのEBSボリューム。

# allocated_storage
# ストレージ割り当て

# max_allocated_storage
# 最大ストレージしきい値

# port
# データベースポート

# backup_retention_period
# バックアップ保持期間

# copy_tags_to_snapshot
# スナップショットにタグをコピー

# skip_final_snapshot
# RDSにはインスタンス削除時にスナップショットをとるか設定できる項目「skip_final_snapshot」がある。
