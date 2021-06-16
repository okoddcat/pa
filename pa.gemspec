require_relative 'lib/pa/version'

Gem::Specification.new do |spec|
  spec.name          = "pa"
  spec.version       = Pa::VERSION
  spec.authors       = ["Martin Tan"]
  # spec.email         = ["TODO: Write your email address"]

  spec.summary       = %q{Ranging activities of a repo.}
  spec.description   = %q{Ranging activities of a repo.}
  spec.homepage      = "https://github.com/mtanneb/pa"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mtanneb/pa"
  spec.metadata["changelog_uri"] = "https://github.com/mtanneb/pa"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'octokit', '~> 4.21'
  spec.add_dependency 'awesome_print', '~> 1.9', '>= 1.9.2'
  spec.add_dependency 'table_print', '~> 1.5', '>= 1.5.7'
  spec.add_dependency 'rubocop', '~> 1.16'
  spec.add_dependency 'pry', '~> 0.14.1'
  spec.add_dependency 'activesupport', '~> 6.1', '>= 6.1.3.2'
end
