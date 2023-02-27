
image=aws_lambda_builder_image
docker build . -t=$image
docker run -v $(pwd)/output:/out $image cp /app/python.zip /out/python.zip

