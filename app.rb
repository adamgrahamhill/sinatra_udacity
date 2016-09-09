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

#first route with variable portion
get "/greet/:name" do
	"Hello #{params[:name]}!"
end

#square variable portion of route, account for non-numbers
get "/square/:num" do
  if params[:num] == "0"
  	"0"
  elsif params[:num].to_i != 0
  	(params[:num].to_i ** 2).to_s  #return value must be a string or wouldn't display. Hence the .to_s
  else
  	"#{params[:num]} is not something you can square. Try entering a number!"
  end
end