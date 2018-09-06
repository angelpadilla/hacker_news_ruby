
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fetch_hn/version"

Gem::Specification.new do |spec|
  spec.name          = "fetch_hn"
  spec.version       = FetchHn::VERSION
  spec.authors       = ["Angel Padilla"]
  spec.email         = ["angelpadillam@gmail.com"]

  spec.summary       = %q{Gem used to fetch the latest news on the site https://news.ycombinator.com/}
  spec.description   = %q{Gem used to fetch the latest news on the site https://news.ycombinator.com/}
  spec.homepage      = "https://github.com/angelpadilla/hacker_news_ruby"
  spec.license       = "MIT"

  spec.metadata['allowed_push_host'] = "https://rubygems.org"
  spec.files         = ["README.md"] + Dir["lib/**/*.*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_dependency "nokogiri", "1.8.2"
end
