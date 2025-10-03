variable "aws_region" {
  description = "The AWS region where resources are created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default     = "us-east-1a"
}

variable "ecr_repository_name" {
  description = "The name for the ECR repository"
  type        = string
  default     = "test-app-repo"
}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "test-ecs-cluster"
}

variable "ecs_service_name" {
  description = "The name of the ECS service"
  type        = string
  default     = "test-ecs-service"
}

variable "ecs_task_definition_name" {
  description = "The name of the ECS task definition"
  type        = string
  default     = "test-ecs-task"
}

variable "ecs_task_family" {
  description = "The familty name of the ECS task definition"
  type        = string
  default     = "test-task-family"
}

variable "container_name" {
  description = "The name of the container in the ECS task definition"
  type        = string
  default     = "test-container"
}
