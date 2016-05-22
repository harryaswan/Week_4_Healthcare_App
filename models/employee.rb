require( 'pg' )
require_relative('../db/sql_runner')

class Employee

  attr_reader( :id, :name )

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO employees (name) VALUES ('#{ @name }') RETURNING *"
    data = SqlRunner.run( sql ).first
    result = Employee.new( data )
    return result
  end

  def self.all()
    sql = "SELECT * FROM employees"
    employees = SqlRunner.run( sql )
    result = employees.map { |s| Employee.new( s ) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM employees"
    SqlRunner.run(sql)
  end



end