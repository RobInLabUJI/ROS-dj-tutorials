FROM robinlab/ros-dj

USER root
RUN apt-get update && apt-get install -y \
    ros-kinetic-ros-tutorials \
    ros-kinetic-common-tutorials \
    && rm -rf /var/lib/apt/lists/

COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
WORKDIR ${HOME}
