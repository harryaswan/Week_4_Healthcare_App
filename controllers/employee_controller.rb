get '/employees' do
  #INDEX
  @artists = Employee.all()
  erb ( :'employees/index' )
end