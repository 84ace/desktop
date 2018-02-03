# kx desktop

![screenshot](https://user-images.githubusercontent.com/5124298/30076477-d1487778-9270-11e7-8914-052630f5fccc.png)

This container provides a virtual XFCE desktop environment that can be accessed through a remote desktop client, using the [xrdp](http://www.xrdp.org/) open source RDP server.

The `latest` tag is always built from the latest Ubuntu release.

The current Xrdp version is

- xrdp 0.9.3.1
- xorgxrdp 0.2.3

## Running it

Start the container and expose the RDP server on the desired port (default is 3389).

```
docker run -d -p 3389:3389 kxes/desktop
```

Connect your RDP client to this port. Default username / password is `user / changeme`.

> If you are using a hardened Linux kernel, such as SELinux enforcing or grsecurity, you might need to use the `--cap-add=IPC_OWNER` option, otherwise, the client will disconnect immediately before the desktop is shown.

## Customising it

Adding more applications is easy, just create a new Dockerfile based on this image and include some `apt-get` commands.

```
FROM kxes/desktop:latest
RUN apt-get update && apt-get install package-name
```

You can create users / change passwords by including some commands in your Dockerfile:

```
RUN useradd --create-home username
RUN echo "username:password" | chpasswd
```

For more advanced customisation, you might want to fork this repository and build an image from scratch. If you make something cool with it, please let us know!

## Contributing

Pull requests are always welcome if you have implemented new features or improvements.

Thanks to:

- Minimons
- *your name here*

## License

The source (except the assets under `ubuntu-files/*`) are licensed under the MIT license.
