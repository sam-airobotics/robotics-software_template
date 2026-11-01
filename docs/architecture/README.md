# Robotics Software Architecture

The workspace separates the robot model, simulator, bringup, actuation, sensor drivers, perception, state estimation, navigation, ROS interfaces and validation.

```text
CAD / URDF-Xacro -> Robot Description -> Gazebo + RViz
                                      |
Sensors -> Perception -> Localization + Mapping
                                      |
                              Nav2 / Planning
                                      |
                              Robot Control
                                      |
                              Hardware Layer
```

Keep shared algorithms robot-agnostic. Put robot-specific parameters in package configuration and system launch orchestration in robot_bringup.
