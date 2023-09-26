resource "aws_instance" "frontend1" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  tags = {
    Name = "frontend1"
  }
}


resource "aws_route53_record" "frontend1" {
  zone_id = "Z00236712TJAPP7J1TL57"
  name    = "frontend1.saujpoo.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend1.private_ip]
}


resource "aws_instance" "backend1" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  tags = {
    Name = "backend1"
  }
}


resource "aws_route53_record" "backend1" {
  zone_id = "Z00236712TJAPP7J1TL57"
  name    = "backend1.saujpoo.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend1.private_ip]
}


resource "aws_instance" "mysql1" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.sg.id]

  tags = {
    Name = "mysql1"
  }
}


resource "aws_route53_record" "mysql1" {
  zone_id = "Z00236712TJAPP7J1TL57"
  name    = "mysql1.saujpoo.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql1.private_ip]
}