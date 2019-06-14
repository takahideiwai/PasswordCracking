//In order to build the image, type in the following commands in the password directory

docker build -t pass .
docker run -p 6080:80 -d -v /dev/shm:/dev/shm pass

//Open any browser and type in "0.0.0.0:6080"

//hashfile1.txt which the user needs in order to complete TASK3 has been copied under the home directory. 

//Directions.pdf which appears on the user's desktop can be opened using Firefox. 


