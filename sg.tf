resource "aws_security_group" "all_tcp" {
  name_prefix  = "all-traffic"
  description  = "Example security group allowing all TCP traffic"
  vpc_id       = aws_vpc.himvpc.id # Replace with your VPC ID

  # Allow all incoming TCP traffic (for demonstration purposes)
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow outgoing TCP traffic (for demonstration purposes)
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow incoming traffic on Jenkins port (port 8080)
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Be cautious, restrict this to trusted IPs in production
  }
}

