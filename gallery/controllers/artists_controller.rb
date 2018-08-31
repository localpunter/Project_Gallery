require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
also_reload('./models/*')


get '/artist' do #index
  @artist = Artist.all()
  erb :"artist/index", :layout => :links
end

get '/artist/new' do #new
  erb( :"artist/new" )
end


get '/artist/:id' do #show
  @artist = Artist.find(params['id'].to_i)
  erb :"artist/show", :layout => :links
end

post '/artist' do #create
  @artist = Artist.new(params)
  @artist.save()
  erb :"artist/create", :layout => :links
end

get '/artist/:id/edit' do #edit
  @artist = Artist.find(params[:id])
  erb(:"artist/edit")
end

post '/artist/:id' do #update
  Artist.new( params ).update
  redirect to '/artist'
end

post '/artist/:id/delete' do #delete
  Artist.destroy(params[:id])
  redirect to '/artist'
end
