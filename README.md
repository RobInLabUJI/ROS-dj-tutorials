# ROS-dj-tutorials 
Dockerized ROS tutorials with jupyter

## Getting started

### Pull the image

    docker pull robinlab/ros-dj-tutorials
    
### Run the image
Make sure your X server is running without access restrictions, then run:

    docker run --name ros-dj-tutorials --rm -p 8888:8888 -e DISPLAY=<host_IP>:0.0 ros-dj-tutorials
    
### Open this URL in your browser

    http://localhost:8888

### Stop the container

Press `Ctrl-C` in the docker terminal.
If needed, run:

    docker container stop ros-dj-tutorials

### Build the image locally

    git clone https://github.com/RobInLabUJI/ROS-dj-tutorials.git
    cd ROS-dj-tutorials
    docker build -t ros-dj-tutorials .
