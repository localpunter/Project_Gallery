require( 'pg' )

class SqlRunner

  def self.run( sql )
    begin
      db = PG.connect({ dbname: 'gallery', host: 'localhost' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query" )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
