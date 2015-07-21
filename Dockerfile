FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ADD . ~/hello-world-rails
WORKDIR ~/hello-world-rails
ADD Gemfile ~/hello-world-rails/Gemfile
RUN bundle install
ADD . ~/hello-world-rails
