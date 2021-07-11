#Base Container Image
FROM ubuntu:21.04

#Set tzdata to run with no input
ENV DEBIAN_FRONTEND=noninteractive 

#Update packages on the system and install pip3 and python3
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y python3-pip 
RUN apt-get install -y python3

#Copy the pip requirements and main code in to the container
COPY ./app/requirements.txt /app/requirements.txt
COPY ./app/main.py /app/main.py

#Set our working directory to be /app
WORKDIR /app

#Install required python packages
RUN pip install -r requirements.txt

#Make the entrypoint python 
ENTRYPOINT [ "python3" ]

#Execute /app/main.py
CMD [ "/app/main.py" ]