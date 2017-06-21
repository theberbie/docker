FROM ruby:latest

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /rails-docker
WORKDIR /rails-docker

ADD Gemfile /rails-docker/Gemfile
ADD Gemfile.lock /rails-docker/Gemfile.lock

RUN bundler install

ADD . /rails-docker

