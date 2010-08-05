spec = Gem::Specification.new do |s|
  s.name = 'shitcan'
  s.version = '0.1'
  s.summary = "Ultra lightweight wrapper for the memcached gem"
  s.description = %{Ultra lightweight wrapper for the memcached gem. Allows for stupidly simple partial caching, code block skipping, memcache fun.}
  s.files = Dir['lib/**/*.rb'] + Dir['test/**/*.rb'] - Dir['test/test_config.yml']
  s.require_path = 'lib'
  s.autorequire = 'builder'
  s.has_rdoc = true
  s.extra_rdoc_files = Dir['[A-Z]*']
  s.rdoc_options << '--title' <<  'Shitcan'
  s.author = "Tyler Love"
  s.email = "git@tylr.org"
  s.homepage = "http://github.com/tylr/shitcan"
end