source "http://rubygems.org"

gem "rails", "3.0.5"

group :development do
	gem "rdoc"
	gem "ruby-debug-ide"
	gem "ruby-debug-base19x"
end

group :test do
	gem "cover_me"
	gem "factory_girl_rails"
	gem "database_cleaner"
	gem "mongoid-rspec"
	gem "metrical"

	# Next gems are not required in the application, but are needed for testing. These should be in the "global" gemset of RVM.
  # gem "autotest"
  # gem "autotest-rails"
	# gem "autotest-growl"
	# gem "autotest-fsevent"
end

group :production do
	# Production gems here.
end

group :development, :test do
	gem "rspec-rails"
end

group :development, :production do
	# Development and production gems here.
end

group :test, :production do
	# Test and production gems here.
end

group :development, :test, :production do
	gem "mongoid", ">= 2.0.0.rc.7"
	gem "bson_ext"
	gem "devise"
	gem 'omniauth'
        gem 'heroku'
  gem "indextank"
#  gem "faraday_stack" #it appears that indextank needs this?
#  gem 'json_pure', '1.4.6', :require => 'json'

end
