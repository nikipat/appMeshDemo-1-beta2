AWS_PROFILE=default

docker build -t hello-world:v1.0 .
docker tag hello-world:v1.0 672518094988.dkr.ecr.us-west-2.amazonaws.com/hello-world:v1.0
docker push 672518094988.dkr.ecr.us-west-2.amazonaws.com/hello-world:v1.0
