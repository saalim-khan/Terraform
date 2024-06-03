variable "age" {
    type = number
  
}

variable "name" {
    type = string
  
}

output "printname" {
    value = "i am  ${var.name} my age is ${var.age}"
  
}