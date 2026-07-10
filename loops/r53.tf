resource "aws_route53_record" "www" {
  count = 4
  zone_id = var.hosted_zone
  name    = "${var.Name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.loops[count.index].private_ip]
  allow_overwrite = true
}