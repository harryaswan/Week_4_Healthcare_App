require_relative('../models/client')




get '/clients' do
  #INDEX
  @clients = Client.all()
  erb ( :'clients/index' )
end

get '/clients/:id' do
  #SHOW
  @client = Client.find( params[:id] )
  erb( :'clients/show' )
end


get '/clients/:id/edit' do
  #EDIT
  @client = Client.find( params[:id] )
  erb( :'clients/edit' )
end

put '/clients/:id' do
  #UPDATE
  puts params
 @client = Client.update( params )
 redirect to( "/clients/#{params[:id]}" )
end