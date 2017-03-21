# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xianghorse_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "xianghorse_view_tool"
  spec.version       = XianghorseViewTool::VERSION
  spec.authors       = ["Benjamin Soung"]
  spec.email         = ["soungbenjamin@gmail.com"]

  spec.summary       = %q{Used to create copyright tag for Xiang Horse's website}
  spec.description   = %q{Creates a copyright tag}
  spec.homepage      = "https://github.com/bsoung/rails-company-page"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
