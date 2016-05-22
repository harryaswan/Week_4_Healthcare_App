require( 'pg' )
require_relative('../db/sql_runner')

class Client

  attr_reader( :id, :name, :address, :requirements )

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @address = options['address']
    @requirements = options['requirements']
  end

  def save()
    sql = "INSERT INTO clients (name, address, requirements) VALUES ('#{@name}', '#{@address}', '#{@requirements}' ) RETURNING *"
    data = SqlRunner.run(sql).first
    result = Client.new( data )
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM clients"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM clients"
    clients = SqlRunner.run( sql )
    result = clients.map { |s| Client.new( s ) }
    return result
  end

  def self.update( options )
    SqlRunner.run(  
    "UPDATE clients SET 
    name ='#{options['name']}',
    address ='#{options['address']}',
    requirements = '#{options['requirements']}'
    WHERE id=#{options['id']}"
    ) 
  end

  def employee()
    sql = "SELECT * FROM employees WHERE id = #{ @client_id }"
    employee = SqlRunner.run( sql )
    result = Employee.new( employee.first )
    return result
  end

end
