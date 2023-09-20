# Pi Notes

## Network & Uni-Fi

Backups in iCloud Files


## Installs

- Pi-Hole
- Unifi Controller 
- Tailscale https://tailscale.com/kb/1041/install-debian-buster/
- Docker https://docs.docker.com/engine/install/raspbian/ 
  - apt-get install ca-certificates curl gnupg
  - usermod -aG docker pi

- hfsplus
- screen
- glances

## Plex
https://pimylifeup.com/raspberry-pi-plex-server/

```
sudo curl https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex-archive-keyring.gpg >/dev/null
echo deb [signed-by=/usr/share/keyrings/plex-archive-keyring.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo apt-get update
sudo apt install plexmediaserver
```

## Docker

```

[Unit]
Description=Plex Media Server container
After=docker.service
Requires=docker.service

[Service]
TimeoutStartSec=0
Restart=always
ExecStartPre=-/usr/bin/docker stop %n
ExecStartPre=-/usr/bin/docker rm %n
ExecStartPre=/usr/bin/docker pull redis
ExecStart=/usr/bin/docker run --rm --name %n redis

[Install]
WantedBy=multi-user.target
```



```
docker build -t plex.armv7 -f Dockerfile.armv7 .

docker run \
-d \
--name plex-pi.home \
--network=host \
--ip=192.168.0.100 \
-e TZ="Africa/Johannesburg" \
-e PLEX_CLAIM="<claimToken>" \
-h plex-pi.home \
-v /mnt/seagate-1tb/plex/config:/config \
-v /mnt/seagate-1tb/plex/transcode:/transcode \
-v /mnt/seagate-1tb/plex/data:/data \
plexinc/pms-docker

```







[Unit]
Description=unifi
Requires=network.target
After=network.target

[Service]
User=unifi
Restart=always
TimeoutSec=15min
KillMode=process
NotifyAccess=main
WorkingDirectory=/usr/lib/unifi/
RuntimeDirectory=unifi
SuccessExitStatus=143
Type=simple
Environment="UNIFI_CORE_ENABLED=false" "UNIFI_JVM_OPTS=-Xmx1024M -XX:+UseParallelGC"
EnvironmentFile=-/usr/lib/unifi/data/system_env
EnvironmentFile=-/etc/default/unifi
ExecStartPre=/usr/sbin/unifi-network-service-helper init
ExecStartPre=+/usr/sbin/unifi-network-service-helper init-uos
ExecStart=/usr/bin/java \
    -Dfile.encoding=UTF-8 \
    -Djava.awt.headless=true \
    -Dapple.awt.UIElement=true \
    -Dunifi.core.enabled=${UNIFI_CORE_ENABLED} \
    $UNIFI_JVM_OPTS \
    -XX:+ExitOnOutOfMemoryError \
    -XX:+CrashOnOutOfMemoryError \
    -XX:ErrorFile=/usr/lib/unifi/logs/hs_err_pid%p.log \
    -jar /usr/lib/unifi/lib/ace.jar start
ExecStartPost=/usr/sbin/unifi-network-service-helper healthcheck
ExecStopPost=+/usr/sbin/unifi-network-service-helper cleanup

[Install]
WantedBy=multi-user.target