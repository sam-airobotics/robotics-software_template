#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ROS_DISTRO="${ROS_DISTRO:-jazzy}"
source "/opt/ros/${ROS_DISTRO}/setup.bash"
cd "${ROOT}/ros2_ws"
colcon test "${@}"
colcon test-result --verbose
