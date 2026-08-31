terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.44.0"
        }
    }
    backend "s3" {
        bucket = "remote-state-aws-s3-dev"
        key = "terraform-eks-jenkins"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true
    }
}

provider "aws" {
    region = "us-east-1"
}

