get '/clients' do
  #INDEX
  @clients = Client.all()
  erb ( :'Client/index' )
end