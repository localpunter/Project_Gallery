require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/artists_controller')
require_relative('controllers/exhibits_controller')
require_relative('controllers/bitings_controller')

get '/' do
  erb( :index )
end
