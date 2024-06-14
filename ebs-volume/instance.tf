resource "aws_ebs_volume" "ebs_vol-1" {
        availability_zone = "us-east-1"      #ebs volume should be in same region
        size = 20
        type = "gp2"
        tag ={
                name = "extra volume"
        }
}
 #to attach it through the running instance use

resource "aws_volume_attachment" "ebs_vol-1" {
        device_name ="/dev/xvdh" 
        volume_id = "${aws_ebs_volume.ebs_vol-1.id}"
        instance_id = "${aws_instance.name.id}"
  
}