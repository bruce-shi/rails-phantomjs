FROM ruby:2.2
MAINTAINER Bruce Shi <bruceshi@chinarenaissance.com>
RUN apt-get update && apt-get install -y git build-essential curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs && apt-get install -y postgresql-client  --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN npm install -g phantomjs

ENV RAILS_VERSION 4.2.5
RUN gem install rails --version "$RAILS_VERSION"
RUN gem install bundler --no-ri --no-rdoc
