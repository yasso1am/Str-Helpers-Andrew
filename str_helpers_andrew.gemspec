
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_helpers_andrew/version"

Gem::Specification.new do |spec|
  spec.name          = "str_helpers_andrew"
  spec.version       = StrHelpersAndrew::VERSION
  spec.authors       = ["Andrew Yasso"]
  spec.email         = ["andrew.yasso@gmail.com"]

  spec.summary       = "String helpers'"
  spec.homepage      = "https://github.com/yasso1am/Str-Helpers-Andrew"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
