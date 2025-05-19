FROM ros:jazzy

SHELL ["/bin/bash", "-c"]
WORKDIR /ros2_ws

RUN apt update && apt upgrade -y

RUN apt install git

RUN git clone https://github.com/ArduCAM/Arducam_tof_camera.git ./external/Arducam_tof_camera

COPY workspace.sh /ros2_ws/
RUN ./workspace.sh

RUN cd external/Arducam_tof_camera/ros2_publisher && \
    source /opt/ros/jazzy/setup.bash && \
    colcon build && \
    cd ../../../

COPY entrypoint.sh /ros2_ws/

ENTRYPOINT ["/ros2_ws/entrypoint.sh"]

CMD ["/bin/bash", "-c", "tail -f /dev/null"]
