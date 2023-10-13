FROM ruby:2.7.4
ENV BUNDLER_VERSION=2.3.10
RUN gem install bundler -v 2.3.10
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN #bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install
COPY . ./
ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]