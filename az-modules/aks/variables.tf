variable "rglocation" {
  type = string
  default = "southafricanorth"

}

variable "env" {
  type = string
  default = "value"
 
}

variable "tags" {
  type = map(string)
  default = {
     author = "eliya gervas"
     service = "aks"
     env = "dev"
  }
}

variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
    default = "67bae972-9160-4eea-869f-f2eae65d3446"
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
    default = "Sog8Q~VfHTNRhBmrZJ3JezHDxKJQ_21xKegiTc-J"
}