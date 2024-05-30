


**Here we are taking input from user**

variable username {}

output:-
$ terraform plan
var.username
  Enter a value: saalim


No changes. Your infrastructure matches the configuration.

the block runs and ask to enter a value 
when we enter the value 
it does not store it any where 
and the block stops


**TO store the it**
output "printname" {
    value = var.username
  
}

output:-
$ terraform plan
var.username
  Enter a value: saalim


Changes to Outputs:
  + printname = "saalim"

when we use the output block it store the value




command :
output "printname" {
    value ="hello ${var.username}"
  
}

output:-
$ terraform plan
var.username
  Enter a value: saalim


Changes to Outputs:
  + printname = "hello saalim"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

here we are printing hello along with the value
use this ***value ="hello ${var.username}"***



here also we aur using File detach

we are creating variable.tf file
and there we enter command :

                  variable username {}

----->>>when we run command terraform.tf

this works fine 
here is the output

$ terraform plan
var.username
  Enter a value: saalim


Changes to Outputs:
  + printname = "hello saalim"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.


=======================================================================================================
When we are building an interactive model
we have to define value
in the command itself


LENOVO@DESKTOP-1BI5I2K MINGW64 ~/OneDrive/Desktop/terraform/hello-variable (main)
$ terraform plan -var "username=saalim"

Changes to Outputs:
  + printname = "hello saalim"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.
==========================================================================
how a user can set a variable default value.
terraformm only ask for variable input 
when it is not set


LENOVO@DESKTOP-1BI5I2K MINGW64 ~/OneDrive/Desktop/terraform/hello-variable (main)
$ terraform plan

Changes to Outputs:
  + printname = "  using default value"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.
=====================================================================
multiple default value 
variable username {
default=" saalim"
}

variable age {
default=" 25"
}


output:

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

LENOVO@DESKTOP-1BI5I2K MINGW64 ~/OneDrive/Desktop/terraform/hello-variable (main)
$ terraform plan

Changes to Outputs:
  + printname = "Hello  saalim your age is  25"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.


================================================================================
taking valid input

Types and Values
The result of an expression is a value. All values have a type, which dictates where that value can be used and what transformations can be applied to it.

Types
The Terraform language uses the following types for its values:

string: a sequence of Unicode characters representing some text, like "hello".
number: a numeric value. The number type can represent both whole numbers like 15 and fractional values like 6.283185.
bool: a boolean value, either true or false. bool values can be used in conditional logic.
list (or tuple): a sequence of values, like ["us-west-1a", "us-west-1c"]. Identify elements in a list with consecutive whole numbers, starting with zero.
set: a collection of unique values that do not have any secondary identifiers or ordering.
map (or object): a group of values identified by named labels, like {name = "Mabel", age = 52}.
Strings, numbers, and bools are sometimes called primitive types. Lists/tuples and maps/objects are sometimes called complex types, structural types, or collection types. See Type Constraints for a more detailed description of complex types.

Finally, there is one special value that has no type:

null: a value that represents absence or omission. If you set an argument of a resource to null, Terraform behaves as though you had completely omitted it — it will use the argument's default value if it has one, or raise an error if the argument is mandatory. null is most useful in conditional expressions, so you can dynamically omit an argument if a condition isn't met.
Literal Expressions


