project_name = "containers-vpc"
region       = "us-east-1"

publicsubnets = {
  "containers-vpc-public-subnet-1a" = {
    cidr_block        = "10.0.48.0/24"
    availability_zone = "us-east-1a"
  }
  "containers-vpc-public-subnet-1b" = {
    cidr_block        = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  }
  "containers-vpc-public-subnet-1c" = {
    cidr_block        = "10.0.50.0/24"
    availability_zone = "us-east-1c"
  }
}

privatesubnets = {
  "containers-vpc-private-subnet-1a" = {
    cidr_block        = "10.0.0.0/20"
    availability_zone = "us-east-1a"
  }
  "containers-vpc-private-subnet-1b" = {
    cidr_block        = "10.0.16.0/20"
    availability_zone = "us-east-1b"
  }
  "containers-vpc-private-subnet-1c" = {
    cidr_block        = "10.0.32.0/20"
    availability_zone = "us-east-1c"
  }
}

dbsubnets = {
  "containers-vpc-databases_subnet-1a" = {
    cidr_block        = "10.0.51.0/24"
    availability_zone = "us-east-1a"
  }
  "containers-vpc-databases_subnet-1b" = {
    cidr_block        = "10.0.52.0/24"
    availability_zone = "us-east-1b"
  }
  "containers-vpc-databases_subnet-1c" = {
    cidr_block        = "10.0.53.0/24"
    availability_zone = "us-east-1c"
  }
}