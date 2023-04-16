resource "aws_security_group" "jenkis" {
  name   = "jenkis-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "this" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "devopselite"
  tags = {
    Name      = "jenkis-ci/cd"
    CreatedBy = "Terraform"
  }
  subnet_id                   = aws_subnet.public-sub-1b.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.jenkis.id]

}

