#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ROS_DISTRO="${ROS_DISTRO:-jazzy}"
source "/opt/ros/${ROS_DISTRO}/setup.bash"
source "${ROOT}/ros2_ws/install/setup.bash"
ros2 launch robot_bringup simulation.launch.py "${@}"
