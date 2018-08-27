require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
also_reload('./models/*')


get '/artists' do #index
  @artist = Artist.all()
  erb ( :"artist/index")
end

get '/artists/new' do #new
  erb( :"artist/new" )
end

# binding.pry
get '/artists/:id' do #show
  @artist = Artist.find(params['id'].to_i)
  erb( :"artist/show")
end

get '/artist/:id/edit' do #edit
  @artist = Artist.find(params[:id])
  erb(:"artist/edit")
end


post '/artists/:id' do # update
  Artist.new( params ).update
  redirect to '/artists'
end
