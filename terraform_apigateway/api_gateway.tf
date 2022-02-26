resource "aws_api_gateway_rest_api" "api_sample" {
  body = jsonencode({
    openapi = "3.0.1"
    info = {
      title   = "api_sample"
      version = "1.0"
    }
    paths = {
      "/posts" = {
        get = {
          x-amazon-apigateway-integration = {
            httpMethod           = "GET"
            payloadFormatVersion = "1.0"
            type                 = "HTTP_PROXY"
            uri                  = "https://jsonplaceholder.typicode.com/posts"
          }
        }
      }
    }
  })

  name = "api_sample"
}
