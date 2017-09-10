## Centos7 container with systemd and ssh

To build:

docker build -t boxscale/sysdssh .

To Run without building: 

docker run --privileged --name centos7-ssh -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d boxscale/sysdssh

Above command keeps ssh inside container. So if in container you can ssh user@container ip - default password is: changeme 

If you add -p 22:22 to above docker run command 

this will export port 22 to hosts. Then you can ssh user@localhost 

If you would like to reset the sshkeys run /opt/resetkeys.sh inside container
