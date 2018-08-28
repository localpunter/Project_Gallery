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
  erb(:"exhibit/new")
end

get '/exhibit/:id' do #show
  @exhibit = Exhibit.find(params[':id'].to_i)
  erb(:"exhibit/show")
end

post '/exhibit' do #create
  @exhibit = exhibit.new(params)
  @exhibit.save
  erb(:"exhibit/create")
end

get '/exhibit/:id/edit' do #edit
  @exhibit = Exhibit.find(params[:id])
  erb(:"exhibit/edit")
end

post '/exhibit/:id' do #update
  Exhibit.new(params).update
  redirect to '/exhibit'
end

post '/exhibit/:id/delete' do #delete
  Exhibit.destroy(params[:id])
  redirect to '/exhibit'

end
