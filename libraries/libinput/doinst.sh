if [ -x /sbin/udevadm ]; then
  /sbin/udevadm hwdb --update >/dev/null 2>&1
fi
