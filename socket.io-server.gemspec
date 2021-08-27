# frozen_string_literal: true

require_relative "lib/socket.io/server/version"

Gem::Specification.new do |spec|
  spec.name = "socket.io-server"
  spec.version = SocketIO::Server::VERSION
  spec.authors = ["Trevor"]
  spec.email = ["contact@tmalard.jp"]

  spec.summary = "Manage socket.io connections (EngineIO versions >=4)"
  # spec.description = "TODO: Write a longer description or delete this line."
  # spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # gemspecify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "minitest", "~> 5"
  spec.add_development_dependency "pry-byebug", "~> 3.9"
  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "standard", "~> 1"
  spec.add_development_dependency "thin", "~> 1.8"
  spec.add_development_dependency "hanami-router", "2.0.0.alpha5"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
