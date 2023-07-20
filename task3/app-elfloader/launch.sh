sudo /usr/bin/qemu-system-x86_64 \
    -fsdev local,id=myid,path="/",security_model=none \
    -device virtio-9p-pci,fsdev=myid,mount_tag=fs0,disable-modern=on,disable-legacy=off \
    -kernel build/elfloader_qemu-x86_64 -nographic \
    -enable-kvm -cpu host \
    -append /bin/ls