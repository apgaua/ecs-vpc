project_name = "ECS"
region       = "us-east-1"
vpc_cidr     = "10.0.0.0/16"

publicsubnets = [
  {
    name              = "ecs-public-subnet-1a"
    cidr              = "10.0.48.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "ecs-public-subnet-1b"
    cidr              = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "ecs-public-subnet-1c"
    cidr              = "10.0.50.0/24"
    availability_zone = "us-east-1c"
  }
]

privatesubnets = [
  {
    name              = "ecs-private-subnet-1a"
    cidr              = "10.0.0.0/20"
    availability_zone = "us-east-1a"
  },
  {
    name              = "ecs-private-subnet-1b"
    cidr              = "10.0.16.0/20"
    availability_zone = "us-east-1b"
  },
  {
    name              = "ecs-private-subnet-1c"
    cidr              = "10.0.32.0/20"
    availability_zone = "us-east-1c"
  }
]
databasesubnets = [
  {
    name              = "ecs-databases_subnet-1a"
    cidr              = "10.0.51.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "ecs-databases_subnet-1b"
    cidr              = "10.0.52.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "ecs-databases_subnet-1c"
    cidr              = "10.0.53.0/24"
    availability_zone = "us-east-1c"
  }
]
