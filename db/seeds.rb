require 'pry-byebug'
require_relative('../models/employee.rb')
require_relative('../models/client.rb')
require_relative('../models/shift.rb')

Employee.delete_all()
Client.delete_all()
Shift.delete_all()

employee1 = Employee.new({ 'name' => 'Sally Smith'})
employee2 = Employee.new({ 'name' => 'Barbara Burton'})
employee3 = Employee.new({ 'name' => 'Sarah Jones'})
employee4 = Employee.new({ 'name' => 'Penny Lane'})

e1 = employee1.save
e2 = employee2.save
e3 = employee3.save
e4 = employee4.save


client1 = Client.new({ 'name' => 'Mr Maxwell', 'address' => '21 Glasgow Rd', 'requirements' => 'Tea and tuck'})
client2 = Client.new({ 'name' => 'Mrs Macintyre', 'address' => '22 Paisley Rd', 'requirements' => 'Dinner, Bed bath'})
client3 = Client.new({ 'name' => 'Mr Braxton', 'address' => '45a Sinclair Crescent', 'requirements' => 'Morning dress, shower'})
client4 = Client.new({ 'name' => 'Mrs Shannon', 'address' => '8a Barrhead Rd', 'requirements' => 'Tea and tuck, shower'})


c1 = client1.save
c2 = client2.save
c3 = client3.save
c4 = client4.save


shift1 = Shift.new( {'employee_id' => e1.id, 'client_id' => c1.id, 'shift_report' => 'report'}) .save()
shift2 = Shift.new( {'employee_id' => e2.id, 'client_id' => c2.id, 'shift_report' => 'report'}) .save()
shift3 = Shift.new( {'employee_id' => e3.id, 'client_id' => c3.id, 'shift_report' => 'report'}) .save()
shift4 = Shift.new( {'employee_id' => e4.id, 'client_id' => c4.id, 'shift_report' => 'report'}) .save()









