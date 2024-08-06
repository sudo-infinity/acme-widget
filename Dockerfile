ARG RUBY_VERSION=3.1.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim as base


# Install dependencies
RUN apt-get update -qq

# Set working directory
WORKDIR /myapp


ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY . /myapp

CMD ["bash"]
