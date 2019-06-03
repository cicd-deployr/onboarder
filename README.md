python-flask-docker Basic Python Flask app in Docker which prints the Users and Resources

Build application Build the Docker image manually by cloning the Git repo.

$ git clone https://github.com/cicd-deployr/onboarder.git $ docker build --tag api_image .

Run the container Create a container from the image.

$ docker run --name my-container -d -p 5000:5000 api_image Now visit http://localhost:5000

Verify the running container Verify by checking the container ip and hostname (ID):

$ docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' my-container

$ docker inspect -f '{{ .Config.Hostname }}' my-container
