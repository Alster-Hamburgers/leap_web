$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leap_web_help/version"
require "leap_web_core/dependencies"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leap_web_help"
  s.version     = LeapWebHelp::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LeapWebHelp."
  s.description = "TODO: Description of LeapWebHelp."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "leap_web_core", "~> 0.0.1"
 
  LeapWebCore::Dependencies.add_ui_gems_to_spec(s)
  
  # s.add_dependency "jquery-rails"
end