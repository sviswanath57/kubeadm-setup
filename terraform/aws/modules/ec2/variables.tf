provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  type    = string
  default = "live-test-instance"
}

variable "ami_id" {
  type    = string
  default = "ami-0735c191cf914754d"
}

variable "vpc_id" {
  type    = string
  default = "vpc-00452ad0c57f2f148"
}


variable "instance_type" {
  type    = string
  default = "t2.small"
}

variable "key_name" {
  type    = string
  default = "devops-key"
}

variable "security_group_ids" {
  type    = list(string)
  default = ["sg-0a082b6ef7bd6d1e4"]
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-0823786c144f61f53", "subnet-03d590e376679c7ad", "subnet-09b7dcc9a853086c3"]
}

variable "inbound_from_port" {
  type    = list(string)
  default = ["80", "80", "80"]
}

variable "inbound_to_port" {
  type    = list(string)
  default = ["80", "80", "80"]
}

variable "inbound_protocol" {
  type    = list(string)
  default = ["TCP", "TCP", "TCP"]
}

variable "inbound_cidr" {
  type    = list(string)
  default = ["10.2.20.0/22", "10.2.28.0/22", "10.2.24.0/22"]
}

variable "outbound_from_port" {
  type    = list(string)
  default = ["32768", "32768", "32768"]
}

variable "outbound_to_port" {
  type    = list(string)
  default = ["61000", "61000", "61000"]
}

variable "outbound_protocol" {
  type    = list(string)
  default = ["TCP", "TCP", "TCP"]
}

variable "outbound_cidr" {
  type    = list(string)
  default = ["10.2.20.0/22", "10.2.28.0/22", "10.2.24.0/22"]
}

