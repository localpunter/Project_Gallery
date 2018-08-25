require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/exhibit.rb' )
also_reload('./models/*')


get '/exhibits' do

end
