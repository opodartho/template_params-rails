# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'template_params/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "template_params-rails"
  spec.version       = TemplateParams::Rails::VERSION
  spec.authors       = ["Zahidul Haque"]
  spec.email         = ["iisowrovii@gmail.com"]
  spec.summary       = "Integrate template_params with rails"
  spec.homepage      = "https://github.com/opodartho/template_params-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "template_params", ">= 0.1.0", "< 0.3"
  spec.add_runtime_dependency "railties", ">=4.1.0", "< 5.2"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
