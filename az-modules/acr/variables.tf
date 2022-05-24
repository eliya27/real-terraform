variable "env" {
  type = string
  default = "dev"
 
}
variable "rg_location" {
  type = string
  default = "uksouth"

}

variable "principal_id" {
  type = string
  default = "089ac6be-ac25-4ef6-bb1d-d0c0812165c3"
}

variable "tags" {
  type = map(string)
  default = {
     author = "eliya gervas"
     service = "acr"
     env = "dev"
  }
}