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
#Stop Docker : docker stop imageid
#login to docker : docker login
# Rename docker image to have docker hum name : docker tag welcome-app ahmadzaidi2/welcome-app
#remove the image created earlier : docker image rm -f welcome-app
#push the latest version of app to docker hub: docker push ahmadzaidi2/welcome-app:latest
#Go to tags  copy pull command from docker hub : docker pull ahmadzaidi2/welcome-app:latest
#run the app again in detached mode:docker run -d -p 5000:5000 ahmadzaidi2/welcome-app:latest