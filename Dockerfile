FROM ubuntu
ENV SSH_PORT=22
RUN apt-get update -y
RUN apt install openssh-server -y
CMD chmod 0600 /key && ssh -o ServerAliveInterval=60 -o GatewayPorts=true -o ExitOnForwardFailure=yes -o StrictHostKeyChecking=no -tt -f -N -R $REMOTE_PORT:$HOST:$PORT $SSH_USER@$SSH_HOST -p $SSH_PORT -i /key