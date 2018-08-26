require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
also_reload('./models/*')


get '/artists' do
  @artists = Artist.all()
  erb ( :"artist/index")
end

get '/artists/:id' do
  @artists = Artist.find(params['id'].to_i)
  erb( :"artist/show")
end
