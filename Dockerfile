# Containerized ROS 2 Jazzy development environment
FROM ros:jazzy
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /workspace
RUN apt-get update && apt-get install -y --no-install-recommends python3-colcon-common-extensions python3-rosdep git build-essential && rm -rf /var/lib/apt/lists/*
COPY . /workspace
CMD ["bash"]
