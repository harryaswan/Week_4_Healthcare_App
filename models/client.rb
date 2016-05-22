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

  def employee()
    sql = "SELECT * FROM employees WHERE id = #{ @client_id }"
    employee = SqlRunner.run( sql )
    result = Employee.new( employee.first )
    return result
  end

  #   def self.destroy(id)
  #     sql = "DELETE FROM albums WHERE id=#{id}"
  #     SqlRunner.run( sql )
  #   end



  #   def self.all()
  #     sql = "SELECT * FROM albums"
  #     albums = SqlRunner.run( sql )
  #     result = albums.map { |s| Album.new( s ) }
  #     return result
  #   end

  #   def self.find( id )
  #     albums = SqlRunner.run( "SELECT * FROM albums WHERE id=#{id}" ) 
  #     result = Album.new( albums.first )
  #     return result
  #   end

  #   def self.update( options )
  #       SqlRunner.run(  
  #         "UPDATE albums SET 
  #           name='#{options['name']}',
  #           artist_id=#{options['artist_id']}
  #           WHERE id=#{options['id']}"
  #       ) 
  #   end

  # end


end
