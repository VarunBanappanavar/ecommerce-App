# AWS Region
variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

# Project Name
variable "project_name" {
  description = "Project name"
  type        = string
  default     = "ecommerce"
}

# VPC Configuration
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

# Public Subnets
variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Private Subnets
variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

# Availability Zones
variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

# EC2 (Jenkins Server)
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

# EKS Cluster Name
variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "ecommerce-eks"
}

# Node Group Config
variable "node_instance_type" {
  description = "EKS worker node instance type"
  type        = string
  default     = "t2.medium"
}

variable "desired_capacity" {
  description = "Desired number of nodes"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "Max number of nodes"
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "Min number of nodes"
  type        = number
  default     = 1
}

# DockerHub (for Jenkins pipeline)
variable "dockerhub_username" {
  description = "DockerHub username"
  type        = string
}

# Tags
variable "tags" {
  description = "Common resource tags"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "ecommerce"
  }
}