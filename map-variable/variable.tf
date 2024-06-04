variable "userage" {
    type = map
    default = {
        Saalim = 25
        Yasir  = 23
    }
}

variable "username" {
    type = string
  
}

output "userage" {
    value = "my name is ${var.username} and my age is ${lookup(var.userage,"${var.username}")}"
  
}