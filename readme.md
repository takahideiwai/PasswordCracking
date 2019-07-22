# Password Hashing and Cracking
## Description of the scenarios
Password is an important user authentication mechanism. Passwords are stored in the database as hashes rather than plain text. If users’ passwords are stored in a database as plain text, malicious hackers can get immediate access to them if they break into the system. In this lab, you will understand what password hash is and how password hash be cracked.  
## Target Audience 
**Instructors**  
If you are an instructor teaching cybersecurity concepts, this lab will be a good hands-on exercise with Password Cracking and Hashing. This lab was deisgned to demonstarte the concepts of password/username management within the Linux system, and the concept of using a Rainbow Table and John the Ripper to crack the hashed passwords.   
**Students**   
If you are a student studying cybersecurity, this lab will surve as a good hands-on experience in password cracking and user management. Students will have the opportunity to explore some key files within the Linux system such as the /etc/shadow and /etc/passwd. Furthermore, students will be able to understand the practical applications of Rainbow Table and John the Ripper. 
## Design and Architecture
This demonstration was design to use one container to conduct all of the assigned tasks. The container comes with all the necessary softwares such as John the Ripper and gedit. Additionally, a text file named hashfile1.txt, which will be used in Task3 has been pre-made and copied under the user's home directory. The user will be able to open a PDF version of the directions which will appear on the Desktop using Firefox which is available within the container. The conatainer provides a VNC interface and therefore, the user will be able to use Firefox, gedit and other necessary softwares that requires a graphical user interface. 
## Installation and Usage  
Docker images needs to be built for the password cracking container.
```bash
cd PasswordCracking  
docker build -t pass .
```
After typing the command listed above, the machine will build the image for the password cracking container.   
The following command will be used to run the container.
```bash
docker run -d -p 80 pass
```  
## Usage 
After typing the command, the container will be accessible by opening the web browser from your own computer.
You will be able to figure out the portnumber by typing in    
```bash
docker ps
```  
And access the container by typing in the following IP address and portnumber in the web browser.
```bash
0.0.0.0:<portnumber>
```
The user will be able to open the Directions.pdf which is located on the Desktop by using Firefox. Directions.pdf will include a step by step instructions on how to perform the tasks. The instrcutions are also available [here](https://takahideiwai.github.io/Cryptography/01-passwordcracking/index.html). 
## How to Contribute
To report issues or contribute enhancements to this application, open a GitHub issue. 





