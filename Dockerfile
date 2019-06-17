FROM dorowu/ubuntu-desktop-lxde-vnc:bionic

#Based on SSL-Strip Victim-VNC docker implemeted by Mr.Kalyanam
MAINTAINER Takahide Iwai "tiwai@purdue.edu"

#add John the ripper and gedit 
RUN apt-get update && apt-get -y install john gedit

#create a non-root user
RUN useradd -d /home/user -m -s /bin/bash user

RUN echo 'user:user' | chpasswd

ENV USER=user \
    PASSWORD=user 

#Create a directory 
RUN mkdir /home/user/Desktop

#Copy the directions in to Desktop    
COPY PasswordCrackingLab.pdf /home/user/Desktop/Directions.pdf

#Copy hashfile1.txt
COPY hashfile1.txt /home/user


#Allow user to run certain commands without a password
ADD usersudo /etc/sudoers.d/
RUN chmod 0400 /etc/sudoers.d/usersudo
