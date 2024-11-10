# Tor in Docker
Running tor in a [Docker container](https://hub.docker.com/repository/docker/hardandheavy/tor/general).

### Requirements
- Ubuntu
- make
- Docker

### Run
Tor bridges can be obtained using a bot [@GetBridgesBot](https://t.me/GetBridgesBot).
```
make gen # Enter the received tor bridges
make run
```
Changing the network setting (Settings - Network):
- Network Proxy - true
- Configuration - Manual
- SOCKS Host
    - URL 127.0.0.1
    - Port 9150
