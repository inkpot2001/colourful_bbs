FROM amd64/ruby:3.0.0

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle config set force_ruby_platform true
RUN bundle update nokogiri
RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]