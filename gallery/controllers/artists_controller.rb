require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
also_reload('./models/*')


get '/artists' do
  @artist = Artist.all()
  erb ( :"artist/index")
end
# binding.pry
get '/artists/:id' do
  @artist = Artist.find(params['id'].to_i)
  erb( :"artist/show")
end
