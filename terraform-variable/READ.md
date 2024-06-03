***taking input directly***
when we have many variable 
we dont have to put every input manually
 


 create a file name using 


 terraform.tfvars

age=25
name="Saalim"

it will take input directly dont need to enter manually 

output:-
$ terraform plan

Changes to Outputs:
  + printname = "i am  Saalim my age is 25"

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.
