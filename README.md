# Robotics Software Template

A modular ROS 2 Jazzy workspace scaffold for robot modeling, simulation, bringup, control, sensing, perception, localization, navigation, interfaces and tests.

## Quick start

Install Ubuntu 24.04 and ROS 2 Jazzy, then:

```bash
source /opt/ros/jazzy/setup.bash
./install_dependencies.sh
cd ros2_ws
colcon build --symlink-install
source install/setup.bash
colcon test
colcon test-result --verbose
```

## Layout

- `assets/`: images, diagrams, videos and robot models
- `docs/`: architecture, installation, simulation, hardware and troubleshooting guides
- `scripts/`: workspace setup, build, simulation launch and test helpers
- `ros2_ws/src/`: ten modular ROS 2 packages: `robot_description`, `robot_simulation`, `robot_bringup`, `robot_control`, `robot_sensors`, `robot_perception`, `robot_localization`, `robot_navigation`, `robot_interfaces` and `robot_tests`

See `docs/architecture/README.md` for the design overview. The packages are starter scaffolds; add platform-specific models, worlds, controller configurations and launch files as your robot requires. Never commit secrets or generated `build/`, `install/` and `log/` directories.
