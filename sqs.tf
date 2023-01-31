resource "aws_sqs_queue" "my-first-sqs" {
  name                      = "terraform-example-queue"
  delay_seconds             = 60
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 15
 
  
  tags = {
    Environment = "production"
  }
}