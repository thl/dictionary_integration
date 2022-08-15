$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dictionary_integration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dictionary_integration"
  s.version     = DictionaryIntegration::VERSION
  s.authors     = ["Andres Montano"]
  s.email       = ["amontano@virginia.edu"]
  s.homepage    = "http://terms.kmaps.virginia.edu"
  s.summary     = "This engine provides the core code for connecting to the legacy dictionary app."
  s.description = "This engine provides the core code for connecting to the legacy dictionary app."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
