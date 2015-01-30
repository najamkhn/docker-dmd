FROM buildpack-deps:jessie-scm
MAINTAINER Najam Khan <n@najamkhn.com>

RUN wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
RUN apt-get update && apt-get install -y gcc libc6-dev make bzip2 unzip d-apt-keyring \
    dmd-bin dub libphobos2-dev --no-install-recommends --allow-unauthenticated;
