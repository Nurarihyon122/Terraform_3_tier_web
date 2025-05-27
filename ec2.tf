resource "aws_instance" "web" {
  ami                    = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  user_data              = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum install -y httpd
                echo "<h1>Terraform Deployed Web Server</h1>" > /var/www/html/index.html
                sudo systemctl start httpd
                sudo systemctl enable httpd
            EOF

  tags = { Name = "web-instance" }
}
