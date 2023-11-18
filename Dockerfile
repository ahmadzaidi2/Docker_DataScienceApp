#First layer linux image
FROM python:3.7
#from my base repository put all file to this folder
COPY . /app
#setup working directory
WORKDIR /app
#install all dependencies
RUN pip install -r requirements.txt
#run app
CMD ["python","app.py"]


#Build Docker Image : docker build -t welcome-app .
#See the images: docker images
#run docker image : docker run -p 5000:5000 welcome-app
#How many containers are running : docker ps
#Stop Docker : docker stop