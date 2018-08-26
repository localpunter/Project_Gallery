require_relative('../db/sql_runner.rb')

class Exhibit

  attr_accessor :title, :category, :artist_id, :id


  def initialize (options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @category = options['category']
    @artist_id = options['artist_id'].to_i

  end

  def save()
    sql = "INSERT INTO exhibits
    (
      title, category, artist_id
    )
    values(
      $1, $2, $3
    )
    RETURNING *"
    values = [@title, @category, @artist_id]
    exhibit_data = SqlRunner.run(sql, values)
    @id = exhibit_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE exhibits
    SET
    (
      title,
      category,
      artist_id
    )
    =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@title, @category, @artist_id, @id]
    SqlRunner.run( sql, values )

  end

  def delete()
    sql = "DELETE FROM exhibits WHERE id = $1
    values = [@id]"
    SqlRunner.run(sql, values)
  end



  def self.all()
    sql = "SELECT * FROM exhibits;"
    exhibits = SqlRunner.run(sql)
    return exhibits.map{ |hash| Exhibits.new(hash) }
  end

  def self.find(id)
    sql = "SELECT * FROM exhibits
    WHERE id = $1;"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Exhibits.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM exhibits;"
    SqlRunner.run(sql)
  end

end
