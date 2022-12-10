module "ami" {
  source = "github.com/jojojoseff/moduleami"
}

resource "aws_instance" "web" {
  ami           = module.ami.latestami
  instance_type = "t2.micro"
  key_name = "devops"
  tags = {
    Name = "HelloWorld"
  }
}

output "instance1" {
value = aws_instance.web.instance_type

}