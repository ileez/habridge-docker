# habridge version
ha-bridge-5.2.0.jar
# habridge-docker
docker run -d --name="HaBridge" --net="host" -e SERVERIP="Your IP" -e SERVERPORT="80" -v /etc/localtime:/etc/localtime:ro zlee/habridge
