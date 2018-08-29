require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/exhibit.rb' )
also_reload('./models/*')


get '/exhibit' do #index
  @exhibit = Exhibit.all()
  erb(:"exhibit/index")
end

get '/exhibit/new' do #new
  @artists = Artist.all
  erb(:"exhibit/new")
end

get '/exhibit/:id' do #show
  # binding.pry
  @exhibit = Exhibit.find(params["id"].to_i)
  erb(:"exhibit/show")
end

post '/exhibit' do #create
  @exhibit = Exhibit.new(params)
  @exhibit.save
  erb(:"exhibit/create")
end

get '/exhibit/:id/edit' do #edit
  @exhibit = Exhibit.find(params[:id])
  @artists = Artist.all
  erb(:"exhibit/edit")
end

post '/exhibit/:id' do #update
  Exhibit.new(params).update
  redirect to '/exhibit'
end

post '/exhibit/:id/delete' do #delete
  exhibit = Exhibit.find(params[:id])
  exhibit.delete()
  redirect to '/exhibit'

end
