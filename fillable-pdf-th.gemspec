lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fillable-pdf/version'

Gem::Specification.new do |spec|
  spec.name          = 'fillable-pdf-th'
  spec.version       = FillablePDFTH::VERSION
  spec.authors       = ['Swiftlet']
  spec.email         = ['swiftlet.dev@gmail.com']

  spec.summary       = 'Fill out or extract field values from simple fillable PDF forms using iText.'
  spec.description   = 'fillable-pdf-th is an extension from fillable-pdf(vkononov) but supported Thai language.'
  spec.homepage      = 'https://github.com/swiftlet-dev/fillable-pdf-th'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(example|test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[ext lib]

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'rjb', '~> 1.6'
end
