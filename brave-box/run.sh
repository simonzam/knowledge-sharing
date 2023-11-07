#! /bin/bash

podman run --rm \
--userns=keep-id \
--group-add=video \
-e DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /usr/share/fonts:/usr/share/fonts:ro \
--shm-size=2g \
--cap-add sys_chroot \
peterzam/box-brave
