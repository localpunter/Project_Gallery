require_relative('../db/sql_runner.rb')
require( 'pry-byebug' )

class Category

  attr_accessor :genre, :id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @genre = options['genre']
  end

  def save()
    sql = "INSERT INTO categories
    (
      genre
    )
    VALUES
    (
      $1
    )
    RETURNING id;"
    values = [@genre]
    category_data = SqlRunner.run(sql, values)
    @id = category_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE category SET genre
    = $1 WHERE id = $2;"
    values = [@genre, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM categories;"
    SqlRunner.run(sql)
  end


end
