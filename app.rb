require 'sinatra'

get "/" do
	puts "You requested the root path"
	"<h1>test header</h1>"
end

get "/about" do
	"<p>The about page tells me soo much</p>"
end

get "/roll-die" do
	"Your die roll is #{rand(1..6)}"
end