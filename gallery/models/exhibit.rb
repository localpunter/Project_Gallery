require_relative('../db/sql_runner.rb')

class Exhibit

  attr_accessor :title, :category, :artist_id, :id


  def initialize (options)
    @id = options['id'].to_i
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

end
