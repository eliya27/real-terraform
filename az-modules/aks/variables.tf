variable "rglocation" {
  type = string
  default = "southafricanorth"

}

variable "tags" {
  type = string
 
}

variable "env" {
  type = map(string)
  default = {
     author = "eliya gervas"
     service = "aks"
     env = "dev"
  }
}