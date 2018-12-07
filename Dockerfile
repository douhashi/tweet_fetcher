FROM ruby:2.5

VOLUME /app
WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

CMD ["bundle", "exec", "foreman", "start"]
