resource "aws_api_gateway_deployment" "api_sample" {
  rest_api_id = aws_api_gateway_rest_api.api_sample.id

  triggers = {
    redeployment = sha1(jsonencode(aws_api_gateway_rest_api.api_sample.body))
  }

  lifecycle {
    create_before_destroy = true
  }
}
