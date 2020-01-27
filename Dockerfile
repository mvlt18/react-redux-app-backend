FROM ruby:2.6.1

RUN mkdir /backend
WORKDIR /backend

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev postgresql-client --fix-missing --no-install-recommends

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /backend/Gemfile
COPY Gemfile.lock /backend/Gemfile.lock

RUN gem install bundler -v 2.0.2

RUN bundle install --deployment

COPY . ./

EXPOSE 3000

# Start the main process.
CMD bundle exec puma -p 3000
