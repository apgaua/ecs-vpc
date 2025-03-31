project_name = "ECS"
region       = "us-east-2"
vpc_cidr     = "10.0.0.0/16"

default_tags = {
  contato = "apgaua@protonmail.com"
  dia     = "D1"
  repo    = "https://github.com/apgaua/ecs-vpc"
}

publicsubnets   = ["10.0.48.0/24", "10.0.49.0/24", "10.0.50.0/24"]
privatesubnets  = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
databasesubnets = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]

database_nacl_rules = [
  {
    rule_start_number = 10
    rule_action       = "allow"
    protocol          = "tcp"
    from_port         = 3306
    to_port           = 3306
  },
  {
    rule_start_number = 20
    rule_action       = "allow"
    protocol          = "tcp"
    from_port         = 6379
    to_port           = 6379
  }
]