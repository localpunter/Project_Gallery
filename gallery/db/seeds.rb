require_relative ('../models/artist.rb')
require_relative ('../models/category.rb')
require_relative ('../models/exhibit.rb')
require ('pry-byebug')


Artist.delete_all()
Category.delete_all()
Exhibit.delete_all()


artist1 = Artist.new({
  "name" => "artist1"
  })

artist1.save()

artist2 = Artist.new({
  "name" => "artist2"
  })

artist2.save()

category1 = Category.new({
  "genre" => "Painting"
  })

category1.save()

category2 = Category.new({
  "genre" => "Sculpture"
  })

category2.save()

category3 = Category.new({
  "genre" => "Science and Technology"
  })

category3.save()

category4 = Category.new({
  "genre" => "Natural World"
  })

category4.save()

exhibit1a = Exhibit.new({
  "title" => "exhibit1a",
  "category_id" => category3.id,
  "artist_id" => artist1.id
  })

exhibit1a.save()


exhibit1b = Exhibit.new({
  "title" => "exhibit1b",
  "category_id" => category2.id,
  "artist_id" => artist1.id
  })

exhibit1b.save()

exhibit2a = Exhibit.new({
  "title" => "exhibit2a",
  "category_id" => category4.id,
  "artist_id" => artist2.id
  })

exhibit2a.save()

exhibit2b = Exhibit.new({
  "title" => "exhibit2b",
  "category_id" => category1.id,
  "artist_id" => artist2.id
  })

exhibit2b.save()



binding.pry
nil
