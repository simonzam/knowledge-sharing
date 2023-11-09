#! /bin/bash

# X11
podman run --rm \
--userns=keep-id \
--group-add=video \
-e DISPLAY \
-v /mnt/wslg/PulseServer:/run/user/1000/pulse \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /usr/share/fonts:/usr/share/fonts:ro \
--shm-size=2g \
--cap-add sys_chroot \
peterzam/box-brave


# Wayland
podman run --rm \
--userns=keep-id \
--group-add=video \
-v /mnt/wslg/PulseServer:/run/user/1000/pulse \
-e XDG_RUNTIME_DIR \
-e WAYLAND_DISPLAY \
-v /run/user/1000/wayland-0:/run/user/1000/wayland-0 \
-v /usr/share/fonts:/usr/share/fonts:ro \
--shm-size=2g \
--cap-add sys_chroot \
peterzam/box-brave --enable-features=UseOzonePlatform --ozone-platform=wayland
