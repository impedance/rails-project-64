lint:
	bundle exec rubocop
	bundle exec slim-lint app/views
install:
	bundle install

test:
	bundle exec rake test
