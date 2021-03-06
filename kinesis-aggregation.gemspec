require_relative 'lib/kinesis/aggregation/version'

Gem::Specification.new do |spec|
  spec.name          = 'kinesis-aggregation'
  spec.version       = Kinesis::Aggregation::VERSION
  spec.authors       = ['hawknewton']
  spec.email         = ['hawk.newton@gmail.com']

  spec.summary       = %q{Read and write AWS KPL aggregate messages}
  spec.description   = %q{Read and write AWS KPL aggregate messages}
  spec.homepage      = 'https://github.com/hawknewton/ruby-kinesis-aggregation'
  spec.licenses      = ['Apache-2.0']
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hawknewton/ruby-kinesis-aggregation'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('google-protobuf', '~> 3.13')
  spec.add_dependency('activesupport', '>= 4.0')
end
