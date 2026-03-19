resource "aws_instance" "jenkins_server" {
  ami           = "ami-0f5ee92e2d63afc18" # Amazon Linux 2
  instance_type = "t2.medium"
  key_name      = "your-key"

  tags = {
    Name = "Jenkins-Server"
  }
}