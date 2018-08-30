require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/category.rb' )
also_reload('./models/*')


get '/category' do #index
  @category = Category.all()
  erb(:"category/index")
end

get '/category/new' do #new
  erb(:"category/new")
end

get '/category/:id' do #show
  @category = Category.find(params["id"].to_i)
  erb(:"category/show")
end

post '/category' do #create
  @category = Category.new(params)
  @category.save()
  erb(:"category/create")
end
