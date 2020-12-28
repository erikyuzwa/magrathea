require_relative 'lib/magrathea/version'

Gem::Specification.new do |spec|
  spec.name          = "magrathea"
  spec.version       = Magrathea::VERSION
  spec.authors       = ["erik yuzwa"]
  spec.email         = ["wazoo@hey.com"]

  spec.summary       = %q{Get the conversation started to use a dark-light theme structure with your CSS.}
  spec.description   = %q{Start the conversation in your project to use a dark-light theme structure with your CSS. The aim is NOT trying to come up with a drop-in replacement for every current / legacy Rails project out there.}
  spec.homepage      = "https://github.com/erikyuzwa/magrathea"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/erikyuzwa/magrathea"
  spec.metadata["changelog_uri"] = "https://github.com/erikyuzwa/magrathea/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # TODO: the following was generated but didn't work when I ran gem build
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #  `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  spec.files = %w[Gemfile CHANGELOG.md CODE_OF_CONDUCT.md LICENSE.txt Rakefile README.md magrathea.gemspec lib/magrathea/version.rb lib/magrathea.rb vendor/assets/javascripts/magrathea.js vendor/assets/stylesheets/_colors.scss vendor/assets/stylesheets/_dark.scss vendor/assets/stylesheets/_light.scss vendor/assets/stylesheets/_theme-switch.scss vendor/assets/stylesheets/_typography.scss vendor/assets/stylesheets/magrathea.scss]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # dependencies to ensure that our SCSS is recognized
  spec.add_dependency "sass-rails", "~> 6.0"
end
