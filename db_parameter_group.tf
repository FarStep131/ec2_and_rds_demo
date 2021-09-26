resource "aws_db_parameter_group" "db-pg" {
  name   = "db-pg"
  family = "mysql5.7"

  parameter {
    name  = "character_set_client"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_connection"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_database"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_results"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }

  parameter {
    name         = "skip-character-set-client-handshake"
    value        = "1"
    apply_method = "pending-reboot"
    # DBを再起動しないと適用できないパラメータの場合は、すぐ適用できないため失敗する。
  }
}
