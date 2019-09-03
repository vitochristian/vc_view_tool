lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vc_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "vc_view_tool"
  spec.version       = VcViewTool::VERSION
  spec.authors       = ["Rails Udemy Course"]
  spec.email         = ["rails@gmail.com"]

  spec.summary       = %q{A Gem to help us learn how to create gem}
  spec.homepage      = "https://github.com/vitochristian/vc_view_tool"
  
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
