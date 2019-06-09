### H3 Python-Flask-Docker 
##### H5 Develop a basic Python Flask app which prints the Users and Resources and Dockerize the image

**_Build the Docker image manually by cloning the Git repo._**
```
$ git clone https://github.com/cicd-deployr/onboarder.git.

$ docker build --tag api_image .
```
**_Run the container Create a container from the image._**
```
$ docker run --name my-container -d -p 5200:5200 api_image.
```
**_Verify the running container Verify by checking the container ip and hostname (ID):_**
```
$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' my-container

$ docker inspect -f '{{ .Config.Hostname }}' my-container
```
