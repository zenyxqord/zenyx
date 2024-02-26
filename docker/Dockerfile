FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Zenyx Developers <dev@zenyx.org>"
LABEL description="Dockerised ZenyxCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /zenyx

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} zenyx
RUN useradd -u ${USER_ID} -g zenyx -s /bin/bash -m -d /zenyx zenyx
RUN mkdir /zenyx/.zenyxcore
RUN chown zenyx:zenyx -R /zenyx

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER zenyx

VOLUME ["/zenyx"]

EXPOSE 9998 9999 19998 19999

WORKDIR /zenyx
