variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "prashant-jenkins-key"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  //default     = "my-jenkins-security-group"
  default  = "launch-wizard-8-6"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "ap-techops-dev"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-03f65b8614a860c29"
}
