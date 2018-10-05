# DanTup / unicorn_hd_demo

A Docker container to simplify running Unicorn HD demos on a Raspberry Pi 3.

To run:

```
docker run --device=/dev/spidev0.0 dantup/unicorn_hd_demo
```

The `--device=/dev/spidev0.0` is required to allow the container to access the local device (docker containers are unprivileged by default).

To run a different sample, append the name of the file from the [examples folder](https://github.com/pimoroni/unicorn-hat-hd/tree/master/examples).

```
docker run --device=/dev/spidev0.0 dantup/unicorn_hd_demo candle.py
```



