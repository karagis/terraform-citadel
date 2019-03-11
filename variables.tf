variable "loc" {
  default = "West Europe"
  description = "Default Azure region"
}

variable "tags" {
  default = {
      source = "citadel"
      environment = "training"
  }
}

