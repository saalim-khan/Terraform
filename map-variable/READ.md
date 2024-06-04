variable "userage" {
    type = map
    default = {
        Saalim = 25
        Yasir  = 23
    }
}
output "userage" {
    value = "my name is Saalim and my age is ${lookup(var.userage,"saalim")}"
  
}
using MAP Variable
  output

  $ terraform plan

Changes to Outputs:
  + userage = "my name is Saalim and my age is 25"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

====================================================================================
making it Dynamic

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



output:--
$ terraform plan
var.username
  Enter a value: Saalim


Changes to Outputs:
  + userage = "my name is Saalim and my age is 25"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

---------------------------------------------------------------------------------------------------------------------------

