require 'pry-byebug'
require_relative('../models/employee.rb')
require_relative('../models/client.rb')
require_relative('../models/shift.rb')

Employee.delete_all()
Client.delete_all()
Shift.delete_all()

employee1 = Employee.new({
  'name' => 'Sally Smith', 
  'bio' => 'Age 35. Demolitions expert, fully qualified for moving and handling. Likes Pina Coladas and getting caught in the rain.', 
  'image' => 'http://mp-mydailythread.com/wp-content/uploads/2015/04/5.jpg', 
  'start_date' => '2010-10-4'
  })

employee2 = Employee.new({ 
  'name' => 'Barbara Burton', 
  'bio' => 'Age 37. Expert hand to hand and knife skills. Fully qualified for moving and handling. Likes people with manners.', 
  'image' => 'http://www.worcester.ac.uk/content_images/nursing-university-worcester-course-page-key-features.jpg', 
  'start_date' => '2012-05-06'
  })

employee3 = Employee.new({
  'name' => 'Mike Jones', 
  'bio' => 'Congressional medal, former black ops, not just a cook. Likes romantic walks and koi.', 
  'image' => 'http://www.degreesfinder.com/wp-content/uploads/2012/01/male-nurse.jpg', 
  'start_date' => '2015-10-19'
  })

employee4 = Employee.new({ 
  'name' => 'Penny Lane', 
  'bio' => 'Former KGB, gymnast and game show contestant. Fully qualified in moving and handling. Likes sunsets.', 
  'image' => 'http://www.worcester.ac.uk/content_images/nursing-student-university-worcester.jpg', 
  'start_date' => '2014-03-24'
  })

e1 = employee1.save
e2 = employee2.save
e3 = employee3.save
e4 = employee4.save


client1 = Client.new({ 
 'name' => 'Mr Maxwell',
 'image' => 'https://www.vitamindcouncil.org/wp-content/uploads/2012/07/old-man2.jpg',
 'address' => '21 Glasgow Rd', 
 'requirements' => 'Tea and tuck'
 })

client2 = Client.new({ 
  'name' => 'Mrs Macintyre',
  'image' => 'http://cdn.bleedingcool.net/wp-content/uploads/2015/04/surviving-sticker-shock-when-buying-a-new-car.png', 
  'address' => '22 Paisley Rd', 
  'requirements' => 'Dinner, Bed bath'
  })

client3 = Client.new({ 
  'name' => 'Mr Braxton', 
  'address' => '45a Sinclair Crescent', 
  'image' => 'https://400dollarchallenge.files.wordpress.com/2012/02/elderly-man.jpg',
  'requirements' => 
  'Morning dress, shower'
  })

client4 = Client.new({ 
  'name' => 'Mrs Shannon', 
  'image' => 'https://coveredinbeer.files.wordpress.com/2014/03/mean-old-lady.jpg',
  'address' => '8a Barrhead Rd', 
  'requirements' => 'Tea and tuck, shower'
  })


c1 = client1.save
c2 = client2.save
c3 = client3.save
c4 = client4.save


shift1 = Shift.new( {'employee_id' => e1.id, 'client_id' => c1.id, 'shift_report' => 'report'}) .save()
shift2 = Shift.new( {'employee_id' => e2.id, 'client_id' => c2.id, 'shift_report' => 'report'}) .save()
shift3 = Shift.new( {'employee_id' => e3.id, 'client_id' => c3.id, 'shift_report' => 'report'}) .save()
shift4 = Shift.new( {'employee_id' => e4.id, 'client_id' => c4.id, 'shift_report' => 'report'}) .save()







# http://iworkineurope.com/wp-content/uploads/2015/03/nurse-appreciation.jpg

