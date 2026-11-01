#!/usr/bin/env bash
set -euo pipefail
ROS_DISTRO="${ROS_DISTRO:-jazzy}"
if [[ ! -f "/opt/ros/${ROS_DISTRO}/setup.bash" ]]; then
  echo "ROS 2 ${ROS_DISTRO} not found; install it before continuing." >&2
  exit 1
fi
source "/opt/ros/${ROS_DISTRO}/setup.bash"
sudo apt-get update
sudo apt-get install -y python3-rosdep python3-colcon-common-extensions
sudo rosdep init 2>/dev/null || true
rosdep update
cd "$(dirname "$0")/ros2_ws"
rosdep install --from-paths src --ignore-src -r -y
