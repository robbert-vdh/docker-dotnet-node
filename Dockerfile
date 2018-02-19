FROM microsoft/dotnet:2.0-sdk
MAINTAINER Robbert van der Helm <mail@robbertvanderhelm.nl>

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && sudo apt-get install -y nodejs \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
