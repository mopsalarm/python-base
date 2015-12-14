Python 3.5 image for docker
===========================

This is a fork of the offical *python:3.5-slim* image.
It contains an onbuild trigger to simply copy an app from the current directory and install its *requirements.txt* file.

This image contains an improved hook for pre-onbuild trigger actions.
If you provide a *onbuild.sh* script, it will be called with the argument
*prepare* before installing requirements and with the argument *cleanup* after. A simple script could look like this:

```sh
#!/bin/sh
set -e

case $1 in
  prepare)
    apt-get update
    apt-get -y install gcc libpq-dev
    ;;

  cleanup)
    apt-get -y purge gcc
    apt-get -y autoremove
    apt-get -y clean
    ;;
esac
```
