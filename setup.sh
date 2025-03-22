#!/bin/bash

qemu-system-x86_64 \
  -enable-kvm \
  -m 16G \
  -cpu host \
  -smp 8 \
  -drive file=ubuntu22.04.qcow2,if=virtio,cache=none \
  -cdrom ubuntu-22.04.5-live-server-amd64.iso \
  -boot d \
  -netdev user,id=net0 \
  -device virtio-net-pci,netdev=net0 \
  -nographic \
  -serial mon:stdio
