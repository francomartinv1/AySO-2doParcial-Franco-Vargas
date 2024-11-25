docker build -t francomartinv1/2parcial-ayso:v1.0 .
docker image list

docker push francomartinv1/2parcial-ayso:v1.0

docker run -d -p 80:80 francomartinv1/2parcial-ayso:v1.0

docker container ls


