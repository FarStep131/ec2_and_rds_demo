# resource "aws_route53_zone" "farstep-tk" {
#   name = "farstep.tk"
# }

# resource "aws_route53_record" "farstep-tk" {
#   zone_id = aws_route53_zone.farstep-tk.zone_id
#   name    = ""
#   type    = "A"
#   ttl     = 300
#   records = [aws_eip.my-eip.public_ip]
# }
