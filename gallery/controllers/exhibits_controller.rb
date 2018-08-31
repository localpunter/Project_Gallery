require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/exhibit.rb' )
also_reload('./models/*')


get '/exhibit' do #index
  @exhibit = Exhibit.all()
  erb :"exhibit/index", :layout => :links
end

get '/exhibit/new' do #new
  @artists = Artist.all
  @categories = Category.all
  erb :"exhibit/new", :layout => :links
end

get '/exhibit/:id' do #show
  @exhibit = Exhibit.find(params["id"].to_i)
  erb :"exhibit/show", :layout => :links
end

post '/exhibit' do #create
  @exhibit = Exhibit.new(params)
  @exhibit.save
  erb(:"exhibit/create", :layout => :links)
end

get '/exhibit/:id/edit' do #edit
  @exhibit = Exhibit.find(params[:id])
  @artists = Artist.all
  @categories = Category.all
  erb :"exhibit/edit", :layout => :links
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
