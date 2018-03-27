FROM microsoft/dotnet:2.0-sdk
MAINTAINER Robbert van der Helm <mail@robbertvanderhelm.nl>

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && apt-get install -y nodejs \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g yarn

# We need ripgrep for finding lines that are too long
RUN curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb \
  && dpkg -i ripgrep_0.8.1_amd64.deb \
  && rm ripgrep_0.8.1_amd64.deb
