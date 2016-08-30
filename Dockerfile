FROM ruby:2.2
MAINTAINER Bruce Shi <bruceshi@chinarenaissance.com>
RUN apt-get update
RUN apt-get install -y git build-essential curl libpq-dev
RUN apt-get install -y imagemagick ghostscript
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs && apt-get install -y postgresql-client  --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN npm install -g phantomjs-prebuilt
RUN gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
RUN gem install rails --version 4.2.5
RUN gem install bundler --no-ri --no-rdoc
