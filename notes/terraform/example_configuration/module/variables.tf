variable "org" {
  type    = string
  default = "taras"
}

variable "app" {
  type    = string
  default = "tftest"
}

variable "stage" {
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "subnet_count" {
  type        = number
  default     = 5
  description = "Number of subnets to deploy within the vitual network."
}
