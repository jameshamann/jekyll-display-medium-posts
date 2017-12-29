# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-display-medium-posts"
  spec.version       = "0.3.0"
  spec.authors       = ["James Hamann"]
  spec.email         = ["jameshamann0@gmail.com"]

  spec.summary       = "A Gem that Parses your Medium RSS Feed and displays it on your Jekyll Site."
  spec.homepage      = "https://github.com/jameshamann/jekyll-display-medium-posts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(lib)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.5"
  spec.add_runtime_dependency  "feedjira", "~> 2"


  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 0"

end
