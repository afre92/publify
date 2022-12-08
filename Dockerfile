FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /publify
WORKDIR /publify

COPY Gemfile /publify/Gemfile
COPY publify_amazon_sidebar /publify/publify_amazon_sidebar
COPY publify_core /publify/publify_core
COPY publify_textfilter_code /publify/publify_textfilter_code
COPY Gemfile.lock /publify/Gemfile.lock

RUN gem install bundle
RUN bundle install

COPY . /publify

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"]