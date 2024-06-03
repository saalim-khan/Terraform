output "printfirst" {
    value = "First user is  ${var.user[1]}"
  
}

variable "user" {
    type = list
    default = ["saalim","yasir","kashif"]

}