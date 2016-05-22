get '/employees' do
  #INDEX
  @employees = Employee.all()
  erb ( :'employees/index' )
end