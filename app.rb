require 'sinatra'
require_relative 'secure_calc.rb'

enable :sessions

get '/' do
	erb :login
end

post '/log' do
	username = params[:user_name]
	password = params[:pass]
	user_arr =["admin", "student", "guest"]
	pass_arr =["admin", "minedminds", "guest"]
	count = 0
	user_arr.each do |name|
		if name == username && pass_arr[count] == password
			redirect '/calc'
		end
		count += 1
	end
		unless user_arr.include?(username) 
			redirect '/invalid_page'
			
		end
		unless pass_arr.include?(password)
			redirect '/invalid_page'
		 end
		redirect '/invalid_page'
end

get '/invalid_page' do
	erb :invalid_page
end

post '/invalid_entry' do
  redirect '/log'
end 

get'/log' do
	erb :login
end

get '/calc' do
	puts "params in calc is #{params}"
	val_1 = session[:val_1] || ""
	val_2 = session[:val_2] || ""
	operation = session[:operation] || ""
	result = session[:result]
  erb :calc, locals:{result: result, val_1: val_1, val_2: val_2, operation: operation}

end

post '/calculate' do
	#puts "params in calculate is #{params}"
	#'params in calculate is {"val_1"=>"2", "val_2"=>"3", "add"=>"add"}'
	session[:val_1] = params[:val_1]
	session[:val_2] = params[:val_2]
	case params[:operation]
		when "add"
		session[:operation] = "+"
		when "subtract"
		session[:operation] = "-"
		when "multiply"
		session[:operation] = "x"
		when "divide"
		session[:operation] = "/"
	end
	session[:result] = work(params[:operation],params[:val_1],params[:val_2])
	p "result is #{session[:result]}"
	redirect '/calc'
end