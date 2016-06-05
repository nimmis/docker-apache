## Apache2 on Ubuntu 14.04 LTS

This is docker images of Ubuntu LTS versions with apache2

To access site contents from utside the container you should map /var/www

### Examples

- plain, accessable on port 8080 `docker run -d -p 8080:80 nimmis/apache`
- with external contents in /home/nimmis/html `docker run -d -p 8080:80 -v /home/nimmis/html:/var/www/html nimmis/apache`

The docker container is started with the -d flag so it will run in the background. To run commands or edit settings inside
the container run `docker exec -ti <container id> /bin/bash'

### TAGs

This image only contains the following LTS versions of Ubuntu, the versions are
nimmis/apache:<tag> where tag is

| Tag    | Ubuntu version | size |
| ------ | -------------- | ---- |
| latest |  16.04 LTS     | [![](https://badge.imagelayers.io/nimmis/apache:latest.svg)](https://imagelayers.io/?images=nimmis/apache:latest) | 
| 16.04  |  16.04 LTS     | [![](https://badge.imagelayers.io/nimmis/apache:16.04.svg)](https://imagelayers.io/?images=nimmis/apache:16.04) |
| 14.04  |  14.04 LTS     | [![](https://badge.imagelayers.io/nimmis/apache:14.04.svg)](https://imagelayers.io/?images=nimmis/apache:14.04) |
| 12.04  |  12.04 LTS     | [![](https://badge.imagelayers.io/nimmis/apache:12.04.svg)](https://imagelayers.io/?images=nimmis/apache:12.04) |
