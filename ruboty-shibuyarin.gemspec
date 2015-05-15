# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/shibuyarin/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-shibuyarin"
  spec.version       = Ruboty::Shibuyarin::VERSION
  spec.authors       = ["Yusuke Nakamura"]
  spec.email         = ["yusuke1994525@gmail.com"]

  spec.summary       = %q{Shibuya Rin for Ruboty.}
  spec.description   = %q{It's a Ruboty pulgin. Respond shiburin-like messages. Shibuya Rin(shiburin) is the character of THE IDOLM @ STER CINDERELLA GIRLS.}
  spec.homepage      = "https://github.com/unasuke/ruboty-shibuyarin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
