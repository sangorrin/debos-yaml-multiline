#!/bin/bash
#   $ ./debos.sh -t tarball:"true" example.yaml

if [ ! -e artifacts ]; then
	mkdir artifacts || true
fi

docker run \
  --rm \
  --interactive \
  --tty \
  --device /dev/kvm \
  --user $(id -u) \
  --mount type=bind,source="$(pwd)",destination=/recipes \
  --mount type=bind,source="$(pwd)/artifacts",destination=/artifacts \
  --workdir /recipes \
  --security-opt label=disable \
  --hostname=docker \
  godebos/debos \
  --artifactdir /artifacts \
  $@

