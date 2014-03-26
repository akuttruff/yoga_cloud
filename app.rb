require 'sinatra'
require_relative 'models/lister.rb'

get '/' do
  erb :index
end


post '/results' do
	puts 'bar'
	slug_name = params['slug_name']
	user_name = params['user_name']

	lister = Lister.new(slug_name, user_name)
  lister.process
  
	erb :results

end
