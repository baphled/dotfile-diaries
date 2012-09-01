require 'rack/rewrite'

root='output'
puts ">>> Serving: #{root}"
run Rack::Directory.new("#{root}")
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
