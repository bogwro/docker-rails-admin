FROM ruby:2.3.1

MAINTAINER Bogumil Wrona <bogumil@code-pan.com>

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

