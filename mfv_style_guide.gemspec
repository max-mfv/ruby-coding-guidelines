lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'mfv_style_guide'
  spec.version       = '0.0.1'
  spec.authors       = ['max-mfv']
  spec.email         = ['nguyen.ba.manh@moneyforward.vn']

  spec.summary       = 'MFV Ruby and Rails style guide and Rubocop configs gem'
  spec.description   = 'MFV Ruby and Rails style guide and Rubocop configs gem'
  spec.homepage      = ''

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'none'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.15'
  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_runtime_dependency 'rubocop', '~> 0.77.0'
end
