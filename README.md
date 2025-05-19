A docker container to run the Arducam TOF camera ROS2 publisher, so ROS2 doesn't need to be installed on the pi locally.
---
# Prerequisites
 - Clone and install the [Arducam TOF repository](https://github.com/ArduCAM/Arducam_tof_camera.git) on the Pi
 -  Using raspi-config, make sure i2c is enabled
---
# Building
 -  `docker build -t arducam-tof-docker .`
---
# Running
 -  `docker run -d --rm --privileged --network=host arducam-tof-docker`

