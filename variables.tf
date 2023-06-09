variable "sub-pub-1a" {
  type    = string
  default = "us-west-2a"
}

variable "sub-pub-1b" {
  type    = string
  default = "us-west-2b"
}

variable "sub-priv-1a" {
  type    = string
  default = "us-west-2a"
}

variable "sub-priv-1b" {
  type    = string
  default = "us-west-2b"
}

variable "cluster-name" {
  type    = string
  default = "demo-terraform"
}

variable "region" {
  type    = string
  default = "us-west-2"
}


variable "ami" {
  type    = string
  default = "ami-0fcf52bcf5db7b003"
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

