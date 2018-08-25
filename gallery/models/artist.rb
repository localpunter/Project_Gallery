require_relative('../db/sql_runner.rb')

class Artist
  attr_accessor :name, :id

  def initialize (options)
    @id = options['id'].to_i
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
    RETURNING *;"
    values = [@name]
    artist_data = SqlRunner.run(sql, values)
    @id = artist_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE artists SET (name)
    = $1 WHERE id = $2;"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = $1
    values = [@id];"
    SqlRunner.run(sql, values)
  end

  def exhibits()
    sql = "SELECT * FROM exhibits
    WHERE artist_id = $1;"

  end

  def self.all()
    sql = "SELECT * FROM artists;"
    artists = SqlRunner.run(sql)
    return artists.map { |hash| Artist.new( hash ) }
  end

  def self.find(id)
    sql = "SELECT * FROM artists
    WHERE id = $1;"

  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)

  end


end
