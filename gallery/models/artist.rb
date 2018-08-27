require_relative('../db/sql_runner.rb')
require( 'pry-byebug' )

class Artist
  attr_accessor :name, :id
  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING id;"
    values = [@name]
    artist_data = SqlRunner.run(sql, values)
    @id = artist_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artists SET name
    = $1 WHERE id = $2;"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = $1
    values = [@id];"
    SqlRunner.run(sql, values)
  end

  # def exhibits()
  #   sql = "SELECT artists.name, exhibits.title, exhibits.category FROM artists
	#         INNER JOIN exhibits
	#         ON artists.id = exhibits.artist_id
  #         WHERE artist_id = $1;"
  #   # binding.pry
  #   values = [@id]
  #   results = SqlRunner.run(sql, values)
  #   return results.map { |exhibit| Exhibit.new(exhibit) }
  # end

  def exhibits()
    sql = "SELECT * FROM exhibits
    WHERE artist_id = $1;"
    # binding.pry
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |exhibit| Exhibit.new(exhibit) }
  end

  def self.all()
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run(sql)
    return artists.map { |artist| Artist.new( artist ) }
  end

  def self.find(id)
    # binding.pry
    sql = "SELECT * FROM artists
    WHERE id = $1;"
    values = [id]
    results = SqlRunner.run(sql, values)
    # binding.pry
    return Artist.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

  def self.destroy(id)
    sql = "DELETE FROM artists
    WHERE id = $1;"
    values = [id]
    SqlRunner.run( sql, values )
  end

end
