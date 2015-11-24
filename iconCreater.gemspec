# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iconCreater/version'

Gem::Specification.new do |spec|
  spec.name          = "iconCreater"
  spec.version       = IconCreater::VERSION
  spec.authors       = ["hoping_sir"]
  spec.email         = ["1059710422@qq.com"]

  spec.summary       = %q{ Create icon for iOS.}
  spec.description   = %q{ Create every measurement icon for iOS.}
  spec.homepage      = "https://github.com/BlankSpace007/iconCreater"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end



  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   << 'iconCreater'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
