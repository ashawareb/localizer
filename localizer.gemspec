# frozen_string_literal: true

require_relative "lib/localizer/version"

Gem::Specification.new do |spec|
  spec.name          = "localizer"
  spec.version       = Localizer::VERSION
  spec.authors       = ["ashawareb"]
  spec.email         = ["aaa.shawareb@gmail.com"]

  spec.summary       = "To localize your system"
  spec.description   = "Simple localization gem"
  spec.homepage      = "https://github.com/ashawareb/localizer"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
  #spec.metadata["changelog_uri"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ashawareb/localizer"
  spec.metadata["changelog_uri"] = "https://github.com/ashawareb/localizer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "faraday"
  spec.add_dependency "activesupport", "~> 4.2.0"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
