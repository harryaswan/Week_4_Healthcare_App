get '/shifts' do
  #INDEX
  @shifts = Shift.all()
  erb ( :'shifts/index' )
end