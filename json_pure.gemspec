lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "json_pure"
  spec.version       = "1.8.90"
  spec.authors       = ["Christian Schlack"]
  spec.email         = ["christian@backhub.co"]

  spec.summary       = %q{This gem overrides JSON pure using Oj}
  spec.homepage      = "https://github.com/backhub/json"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/backhub/json"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "oj", "~> 3.10"
end
