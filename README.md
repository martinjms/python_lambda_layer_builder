This repo was created to easily generate lambda layers with python libraries from any platform

Just modify the file "requirements.txt" with the libraries you need.


To generate the layer run the following commands

```
docker build . -t=$docker_image
```
```
docker run -v $(pwd)/output:/out $docker_image cp /app/python.zip /out/python.zip
```
