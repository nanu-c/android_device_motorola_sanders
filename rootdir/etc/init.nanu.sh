#!/system/bin/sh
/system/bin/mkdir /dev/cpuset
/system/bin/mount -t cgroup -o cpuset cpuset /dev/cpuset
