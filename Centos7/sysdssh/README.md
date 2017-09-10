## Centos7 container with systemd and ssh

To build:

docker build -t boxscale/sysdssh .

To Run without building: 

docker run --privileged --name centos7-ssh -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d boxscale/sysdssh

Above command keeps ssh inside container so you would ssh@<container ip>

add -p 22:22 to above docker run command if you would like to expose port 22 to host
