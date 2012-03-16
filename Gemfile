source 'https://rubygems.org'

# Specify your gem's dependencies in babies.gemspec
gemspec

group :development, :test do
  gem 'guard-rspec', :require => false
  gem 'growl', :require => false
end

platforms :jruby, :ruby_18 do
  gem 'json'
  gem 'jruby-openssl', '~> 0.7'
end
