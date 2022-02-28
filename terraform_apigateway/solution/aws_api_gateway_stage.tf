resource "aws_api_gateway_stage" "api_sample" {
  deployment_id = aws_api_gateway_deployment.api_sample.id
  rest_api_id   = aws_api_gateway_rest_api.api_sample.id
  stage_name    = "test"
}
