resource "aws_instance" "myvm"{
  ami="ami-04b938437b69a2c9c"
  instance_type="t3.micro"
  tags={
     Name="testing VM"
  }
}
resource "aws_eip" "lb"{
  instance=aws_instance.example.id
}
