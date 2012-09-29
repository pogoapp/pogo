$:.unshift File.expand_path("../lib", __FILE__)
require "heroku/version"

Gem::Specification.new do |gem|
  gem.name    = "pogo"
  gem.version = Heroku::VERSION

  gem.author      = "Heroku"
  gem.email       = "support@pogoapp.com"
  gem.homepage    = "http://pogoapp.com/"
  gem.summary     = "Client library and CLI to deploy apps on Pogoapp."
  gem.description = "Client library and command-line tool to deploy and manage apps on Pogoapp."
  gem.executables = "pogo"
  gem.license     = "MIT"
  gem.post_install_message = <<-MESSAGE
 !    Thanks for trying the Pogoapp beta!
  MESSAGE

  gem.files = %x{ git ls-files }.split("\n").select { |d| d =~ %r{^(License|README|bin/|data/|ext/|lib/|spec/|test/)} }

  gem.add_dependency "heroku-api",  "~> 0.3.5"
  gem.add_dependency "netrc",       "~> 0.7.7"
  gem.add_dependency "rest-client", "~> 1.6.1"
  gem.add_dependency "launchy",     ">= 0.3.2"
  gem.add_dependency "rubyzip"
end
