# kx desktop

This container provides a virtual XFCE desktop environment that can be accessed through a remote desktop client, using the [xrdp](http://www.xrdp.org/) open source RDP server.

The current version is based on

- Ubuntu 17.04 "zesty"
- xrdp 0.9.1

## Running it

Start the container and expose the RDP server on the desired port (default is 3389).

```
docker run -d -p 3389:3389 kxes/desktop
```

Connect your RDP client to this port.

## Customising it

Adding more applications is easy, just create a new Dockerfile based on this image and include some `apt-get` commands.
