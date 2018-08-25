require_relative ('../models/artist.rb')
require_relative ('../models/exhibit.rb')
require ('pry-byebug')

# Artist.delete_all()
# Exhibit.delete_all()

artist1 = Artist.new({
  "name" => "artist1"
  })

artist1.save()

artist2 = Artist.new({
  "name" => "artist2"
  })

artist2.save()

exhibit1a = Exhibit.new({
  "title" => "exhibit1a",
  "category" => "painting",
  "artist_id" => artist1.id
  })

# exhibit1a.save()

exhibit1b = Exhibit.new({
  "title" => "exhibit1b",
  "category" => "sculpture",
  "artist_id" => artist1.id
  })

# exhibit1b.save()

exhibit2a = Exhibit.new({
  "title" => "exhibit2a",
  "category" => "sculpture",
  "artist_id" => artist2.id
  })

# exhibit2a.save()

exhibit2b = Exhibit.new({
  "title" => "exhibit2b",
  "category" => "painting",
  "artist_id" => artist2.id
  })

# exhibit2b.save()

binding.pry
nil
