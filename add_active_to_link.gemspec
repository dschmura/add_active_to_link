# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'add_active_to_link/version'

Gem::Specification.new do |spec|
  spec.name          = "add_active_to_link"
  spec.version       = AddActiveToLink::VERSION
  spec.authors       = ["David Chmura"]
  spec.email         = ["dschmura@humbledaisy.com"]

  spec.summary       = "jQuery snippet for Rails projects that parses the url for the current page, and adds an 'active' class decoration to links that match the current page."
  spec.description   = "jQuery snippet for Rails projects that parses the url for the current page, and adds an 'active' class decoration to links that match the current page.

By default this snippet is designed to work with Twitter Bootstrap v4 header navigation. However, you can target different elements in your page(s) by modifying the active_element variable. In the default it is targetting links within a line item within a header element with a class of navbar-nav."
  spec.homepage      = "https://github.com/dschmura/add_active_to_link_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
