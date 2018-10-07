# DanTup / unicorn_hd

A Docker container to simplify using the Unicorn HD library and demos on a Raspberry Pi 3.

To run:

```
docker run --device=/dev/spidev0.0 dantup/unicorn_hd
```

The `--device=/dev/spidev0.0` is required to allow the container to access the local device (docker containers are unprivileged by default).

To run a different file, append the name of the file (eg. from the [examples folder](https://github.com/pimoroni/unicorn-hat-hd/tree/master/examples)) and add `-it` if an interactive terminal is required (eg. for snake).

```
docker run -it --device=/dev/spidev0.0 dantup/unicorn_hd snake.py
```



