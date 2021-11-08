FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:

RUN mkdir -p /home/stuff
ENV APP_ID=
# Set work dir:
WORKDIR /home

# Copy files:
COPY startbot.sh /home
COPY /stuff /home/stuff

# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN git clone https://github.com/janganminin/simplebuild.git &&\
ADD startbot.sh /startbot.sh &&\
RUN chmod +x /startbot.sh &&\
# Run bot script:
CMD /startbot.sh
