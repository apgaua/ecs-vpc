project_name = "ecs-vpc"
region       = "us-east-1"

publicsubnets = {
  "ecs-vpc-public-subnet-1a" = {
    cidr_block        = "10.0.48.0/24"
    availability_zone = "us-east-1a"
  }
  "ecs-vpc-public-subnet-1b" = {
    cidr_block        = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  }
  "ecs-vpc-public-subnet-1c" = {
    cidr_block        = "10.0.50.0/24"
    availability_zone = "us-east-1c"
  }
}

privatesubnets = {
  "ecs-vpc-private-subnet-1a" = {
    cidr_block        = "10.0.0.0/20"
    availability_zone = "us-east-1a"
  }
  "ecs-vpc-private-subnet-1b" = {
    cidr_block        = "10.0.16.0/20"
    availability_zone = "us-east-1b"
  }
  "ecs-vpc-private-subnet-1c" = {
    cidr_block        = "10.0.32.0/20"
    availability_zone = "us-east-1c"
  }
}

dbsubnets = {
  "ecs-vpc-databases_subnet-1a" = {
    cidr_block        = "10.0.51.0/24"
    availability_zone = "us-east-1a"
  }
  "ecs-vpc-databases_subnet-1b" = {
    cidr_block        = "10.0.52.0/24"
    availability_zone = "us-east-1b"
  }
  "ecs-vpc-databases_subnet-1c" = {
    cidr_block        = "10.0.53.0/24"
    availability_zone = "us-east-1c"
  }
}