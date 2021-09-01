## Process Followed

1. Install Docker in the system
2. Create a Dockfile (exact name with no extension)
3. Create required html files
4. Read the docker documentation and install python, pip and flask(to create a web application) using the DockerFile commands

## Deploy web application using docker containers by creating docker image from scratch

1. Build the docker image using 'docker build . -t test' (This has to be run in the directory where the Dockerfile is present)
2. Run the container from the image and start the container using 'docker run -d -p 5000:5000 test (name given above on build)

## App Functionality
1. This is a static website and has a link to the documentation referred to make the Dockerfile
2. On clicking the button, we reach the docker documentation page - https://docs.docker.com/engine/reference/builder/#run

## Below is the image from cmd
![alt text](https://github.com/niladri-lahiri-1308/MT19AIE272/blob/main/images/DockerCapture.PNG)

## Below is the image of localhost from browser
![alt text](https://github.com/niladri-lahiri-1308/MT19AIE272/blob/main/images/DockerLocalHost.PNG)
