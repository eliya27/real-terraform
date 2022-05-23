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
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
}