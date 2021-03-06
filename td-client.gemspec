# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'td/client/version'

Gem::Specification.new do |gem|
  gem.name          = "td-client"
  gem.summary       = "Treasure Data API library for Ruby"
  gem.description   = "Treasure Data API library for Ruby"
  gem.authors       = ["Treasure Data, Inc."]
  gem.email         = "support@treasure-data.com"
  gem.homepage      = "http://treasuredata.com/"
  gem.version       = TreasureData::Client::VERSION
  gem.has_rdoc      = false
  gem.test_files    = Dir["spec/**/*_spec.rb"]
  gem.files         = Dir["lib/**/*", "ext/**/*", "data/**/*", "spec/**/*.rb"]
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 1.8.7'

  if RUBY_ENGINE == 'ruby' && RUBY_VERSION.split('.')[0..1].join('.').to_f < 2.2
    gem.add_dependency "msgpack", [">= 0.4.4", "!= 0.5.0", "!= 0.5.1", "!= 0.5.2", "!= 0.5.3", "< 0.5.12"]
  else
    gem.add_dependency "msgpack", [">= 0.4.4", "!= 0.5.0", "!= 0.5.1", "!= 0.5.2", "!= 0.5.3", "< 0.6.0"]
  end
  gem.add_dependency "json", ">= 1.7.6"
  gem.add_dependency "httpclient", [">= 2.5.2", "< 2.6.0"]
  gem.add_development_dependency "rspec", "~> 2.8"
  gem.add_development_dependency 'mime-types', "1.25" # mime-types => 2.0, does not support Ruby 1.8.
  gem.add_development_dependency 'rest-client', "1.6.8" # rest-client => 1.6.8, does not support Ruby 1.8.
  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency "webmock", "~> 1.16"
  gem.add_development_dependency 'simplecov', '>= 0.5.4'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'yard'
end
