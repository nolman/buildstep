FROM progrium/cedarish:cedar14
MAINTAINER Nolan Evans <nolane@gmail.com>

ADD ./stack/configs/etc-profile /etc/profile

ADD ./builder/ /build
RUN xargs -L 1 /build/install-buildpack /tmp/buildpacks < /build/config/buildpacks.txt
