# Arducam TOF Camera ROS2 Publisher in Docker

The Arducam TOF camera ROS2 publisher, in Docker.

## Description

A docker container to run the Arducam TOF camera ROS2 publisher, so ROS2 doesn't need to be installed on the pi locally.

## Getting Started

### Dependencies

* A RaspberryPi running Raspbian OS
* Docker
* [Arducam TOF repository](https://github.com/ArduCAM/Arducam_tof_camera.git)

### Installing

* On your RaspberryPi, make sure that i2c is enabled, using `raspi-config`
* Clone and install the [Arducam TOF repository](https://github.com/ArduCAM/Arducam_tof_camera.git) on your RaspberryPi
* Clone this repository to your Raspberry Pi
```
cd ~
git clone https://github.com/c-stubbs/arducam-tof-docker.git
```
* Build and install using the Dockerfile
```
docker build -t arducam-tof-docker .
```

### Executing program
```
docker run -d --rm --privileged --network=host arducam-tof-docker
```

## Authors

[Chandler Stubbs](https://github.com/c-stubbs)

## License

This project is licensed under the MIT License - see the LICENSE file for details

## Acknowledgments

* [Arducam](https://github.com/ArduCAM/Arducam_tof_camera.git)


