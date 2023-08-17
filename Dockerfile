FROM ruby:3.2.2-bookworm

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install bundler

# Set the working directory inside the container
WORKDIR /myapp

# Copy the Gemfile and Gemfile.lock and install the gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the entire project into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
