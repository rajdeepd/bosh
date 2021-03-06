Gem::Specification.new do |s|
  s.name         = "simple_blobstore_server"
  s.version      = '0.0.1'
  s.platform     = Gem::Platform::RUBY
  s.summary      = "BOSH Simple Blobstore Server"
  s.description  = s.summary
  s.author       = "VMware"
  s.homepage = 'https://github.com/cloudfoundry/bosh'
  s.license = 'Apache 2.0'
  s.email        = "support@cloudfoundry.com"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")

  s.files        = `git ls-files -- lib/*`.split("\n") + %w(README)
  s.require_path = "lib"

  s.add_dependency "uuidtools"
  s.add_dependency "thin"
  s.add_dependency "sinatra", "~> 1.2.8"

  s.bindir      = 'bin'
  s.executables << 'simple_blobstore_server'
end
