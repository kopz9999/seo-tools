# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "seo_tools/version"

Gem::Specification.new do |spec|
  spec.name          = "seo_tools"
  spec.version       = SeoTools::VERSION
  spec.authors       = ["Kopz Kyoto"]
  spec.email         = ["kopz9999@gmail.com"]

  spec.summary       = %q{Basic SEO Tools}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/kopz9999/seo-tools"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = ["st_sitemap"]
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", ">= 1.8.2"
  spec.add_dependency "rest-client", ">= 2.0.2"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
