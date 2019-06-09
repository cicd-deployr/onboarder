### Python-Flask-Docker 
##### Develop a basic Python Flask app which prints the Users and Resources and Dockerize the image

**_Cloning the Git repo_**
```
$ git clone https://github.com/cicd-deployr/onboarder.git
```
**_Change the directory to onboarder by using the following command_**
```
cd onboarder
```
**_Build the Docker Image_**
```
$ docker build --tag api_image .
```
### To push images you can use the command line. Start by logging in:
**Login to Canister https://cloud.canister.io and create a repository
```
docker login --username=username cloud.canister.io:5000
```
Password will be asked to enter***
**Now tag the image that we want to publish**
```
docker tag (your image id) cloud.canister.io:5000/username/onborder:v0.1
```
**Now push the tag to the repository**
```
docker push cloud.canister.io:5000/username/onboarder
```
**_Download precreated image_**
_You can also just download the existing image from Canister_
```
docker pull cloud.canister.io:5000/username/onboarder
```
**_Run the container Create a container from the image_**
```
$ docker run --name (container name) -d -p 5200:5200 (image name)
```
**_Verify the running container Verify by checking the container ip and hostname (ID):_**
```
$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' (container name)

$ docker inspect -f '{{ .Config.Hostname }}' (container name)
```
