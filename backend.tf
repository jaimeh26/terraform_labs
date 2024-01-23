terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
    cloud {
        organization = "jaimeh26"
      workspaces {
        name = "terraform_aws"
      }
    }

}
