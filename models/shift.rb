require( 'pg' )
require_relative('../db/sql_runner')

class Shift

  attr_reader( :id, :employee_id, :client_id, :shift_report )

  def initialize( options )
    @id = options['id'].to_i
    @employee_id = options['employee_id'].to_i
    @client_id = options['client_id'].to_i
    @shift_report = options['shift_report']
  end

  def save()
    sql = "INSERT INTO shifts (employee_id, client_id, shift_report) VALUES ('#{@employee_id}', '#{@client_id}', '#{@shift_report}' ) RETURNING *"
    data = SqlRunner.run(sql).first
    result = Shift.new( data )
    return result
  end

  def self.all()
    sql = "SELECT * FROM shifts"
    shifts = SqlRunner.run( sql )
    result = shifts.map { |s| Shift.new( s ) }
    return result
  end

  def self.update( options )
    SqlRunner.run(  
    "UPDATE shifts SET 
    employee_id ='#{options['employee_id']}',
    client_id ='#{options['client_id']}',
    shift_report = '#{options['shift_report']}'
    WHERE id=#{options['id']}"
    ) 
  end

  def self.delete_all()
    sql = "DELETE FROM shifts"
    SqlRunner.run(sql)
  end


end