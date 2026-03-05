resource "aws_instance" "preprocess_ec2" {
 ami           = "ami-0c94855ba95c71c99"
 instance_type = "t3.micro"
 vpc_security_group_ids = [
aws_security_group.abc_sg.id
 ]
 tags = {
   Name = "abc-preprocess-ec2"
 }
}
#trigger pipeline

