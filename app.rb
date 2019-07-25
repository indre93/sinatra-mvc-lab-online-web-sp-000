require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

<<<<<<< HEAD
  post '/piglatinize' do
    @latinized_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
=======
  post '/' do
    @pig_latinized = PigLatinizer.new(params[:user_phrase])

>>>>>>> 8e6100658e722f2de8cc33380ab966325cb5a44a
    erb :piglatinize
  end
end
