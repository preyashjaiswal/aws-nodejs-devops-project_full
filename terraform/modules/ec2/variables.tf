variable "vpc_id" {}
variable "subnets" {
  type = list(string)
}
variable "alb_arn" {}
variable "instance_count" {
  default = 2
}