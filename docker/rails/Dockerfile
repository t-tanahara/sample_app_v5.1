FROM ruby:2.5.1
ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get install -y nodejs sqlite3 mysql-client --no-install-recommends

RUN gem install bundler

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install --without production

COPY . /myapp