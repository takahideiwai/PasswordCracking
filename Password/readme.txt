//In order to build the image, type in the following commands in the password directory

docker build -t pass .
docker run -p 6080:80 -d -v /dev/shm:/dev/shm pass

//Open any browser and type in "0.0.0.0:6080"


