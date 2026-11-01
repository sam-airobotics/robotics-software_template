# Troubleshooting

- Package not found: source /opt/ros/jazzy/setup.bash and ros2_ws/install/setup.bash.
- Missing dependencies: run rosdep install --from-paths ros2_ws/src --ignore-src -r -y.
- Stale build: remove ros2_ws/build, install and log, then rebuild.
- Gazebo GUI issues: check display forwarding, GPU access and permissions.
- TF errors: verify frame IDs, timestamps and transform connectivity.
