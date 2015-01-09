Gem::Specification.new do |s|
  s.name          = 'arg-dolarblue-btc'
  s.version       = '0.1.2'
  s.date          = '2014-08-28'
  s.summary       = "Dolar Blue and BTC price"
  s.description   = "A simple gem that show you the Dolar Blue and BTC price. The BTC price is taken from Bitfinex."
  s.authors       = ["Nicolas Purita"]
  s.email         = 'nicospuri@gmail.com'
  s.files         = ["lib/arg-dolarblue-btc.rb", "bin/arg-blues"]
  s.homepage      = ''
  s.license       = 'MIT'
  s.bindir        = 'bin'
  s.executables   = ["arg-blues"]
  s.has_rdoc      = false

  s.add_runtime_dependency 'colorize', '~> 0.7'
  s.add_runtime_dependency 'httparty', '~> 0.13'

  s.post_install_message = "To use execute 'arg-blues'"
end
