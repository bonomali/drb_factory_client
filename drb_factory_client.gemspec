Gem::Specification.new do |s|
  s.name = 'drb_factory_client'
  s.version = '0.0.1'
  s.author = 'Vladimir Vorobyov'
  s.email = 'sparrowpublic@gmail.com'
  s.summary = 'Remote factory client for ActiveResource'

  s.require_path = 'lib'
  s.files = Dir.glob('{lib}/**/*') + %w(drb_factory_client.gemspec README)
end