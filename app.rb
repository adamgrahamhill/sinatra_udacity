require 'sinatra'

get "/" do
	puts "You requested the root path"
	"<h1>test header</h1>"
end

get "/about" do
	"<p>The about page tells me soo much</p>"
end