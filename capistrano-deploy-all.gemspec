Gem::Specification.new do |spec|
  spec.platform    = Gem::Platform::RUBY
  spec.name        = "capistrano-deploy-all"
  spec.version     = "0.1.3"
  spec.summary     = "Deploy a service or run a Rake task against all environments"
  spec.description = "Deploy a service or run a Rake task against all environments using Capistrano. The environments are going to be read based on the /config/deploy/*.rb files"
  spec.author      = "Arturo Herrero"
  spec.email       = "arturo.herrero@gmail.com"
  spec.homepage    = "https://github.com/mydrive/capistrano-deploy-all"
  spec.license     = "BSD 2-clause"

  spec.required_ruby_version = ">= 2.2.0"

  spec.files       = Dir["{bin,lib}/**/*", "README.md"]
  spec.executables = ["deploy_all", "rake_all"]

  spec.add_dependency "capistrano"
end
