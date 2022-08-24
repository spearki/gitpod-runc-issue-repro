# Minimal reproduction for Gitpod docker-compose issues

## Run

```
$ docker compose up -d --force-recreate
...
Error response from daemon: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: error closing exec fds: open /proc/self/fd: no such file or directory: unknown
Error response from daemon: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: error during container init: error mounting "proc" to rootfs at "/proc": mount proc:/proc (via /proc/self/fd/6), flags: 0xe: operation not permitted: unknown
```

You can use the `generate.sh` script to generate a `docker-compose.yml` with more services (though 30 seems to reproduce this almost every time):
```
./generate.sh 50 > docker-compose.yml
```
