#!/system/bin/sh
/system/bin/mkdir /sys/fs/cgroup/cpuset
/system/bin/mount -t cgroup -o cpuset cpuset /sys/fs/cgroup/cpuset
