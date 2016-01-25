Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_affiliate'
  s.version     = '0.3.6'
  s.summary     = 'Saves affiliates to cookies'
  s.description = 'This gem is used to saves affiliates to cookies'
  s.required_ruby_version = '>= 1.8.7'

  s.authors       = ['Creative Group']
  s.email         = ['developers@cg.nl']

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
