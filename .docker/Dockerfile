FROM rails:5.0.1
MAINTAINER Guillaume Crochemore <guillaume.crochemore@gmail.com>

ENV RAILS_ENV=development
ENV RACK_ENV=development

RUN mkdir -p /var/app
COPY Gemfile /var/app/Gemfile
COPY Gemfile.lock /var/app/Gemfile.lock
WORKDIR /var/app

RUN bundle install
CMD ["bundle", "exec", "rails","server","-b","0.0.0.0"]