
FROM ros:melodic-ros-core-bionic

# install bootstrap tools
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    python-rosdep \
    python-rosinstall \
    python-vcstools \
    && rm -rf /var/lib/apt/lists/*

# bootstrap rosdep
RUN rosdep init && \
  rosdep update --rosdistro $ROS_DISTRO

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-ros-base=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*
    

#install ROS industrial 
  RUN apt update -y
# ROS1 install
  RUN apt install -y ros-melodic-desktop
      apt install -y python-wstool python-catkin-tools
      apt install -y ros-melodic-perception ros-melodic-urdf-tutorial ros-melodic-moveit
      apt install -y ros-melodic-openni-camera ros-melodic-openni-launch ros-melodic-openni2-camera ros-melodic-openni2-launch
      apt install -y ros-melodic-industrial-core
      apt install -y pcl-tools
