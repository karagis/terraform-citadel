variable "loc" {
  default = "westeurope"
  description = "Default Azure region"
}

variable "tags" {
  default = {
      source = "citadel"
      environment = "training"
  }
}

variable "webapplocs" {
  type = "list"
  default = []
}


