require_relative "lib/early_bird/version"

Gem::Specification.new do |spec|
  spec.name        = "early_bird"
  spec.version     = EarlyBird::VERSION
  spec.authors     = ["Carl Dawson"]
  spec.email       = ["carldawson@hey.com"]
  spec.homepage    = "https://github.com/carldaws/early_bird"
  spec.summary     = "EarlyBird provides simple waitlist functionality to WIP Rails apps"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency 'rails', '~> 7.0', '>= 7.0.8'
end
