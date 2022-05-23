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