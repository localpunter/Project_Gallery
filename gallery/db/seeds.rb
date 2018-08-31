require_relative ('../models/artist.rb')
require_relative ('../models/category.rb')
require_relative ('../models/exhibit.rb')
require ('pry-byebug')


Artist.delete_all()
Category.delete_all()
Exhibit.delete_all()


artist1 = Artist.new({
  "name" => "Da Vinci"
  })

artist1.save()

artist2 = Artist.new({
  "name" => "Dali"
  })

artist2.save()

artist3 = Artist.new({
  "name" => "Papa Lazarou"
  })

artist3.save()

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
  "title" => "Helecopter design",
  "category_id" => category3.id,
  "artist_id" => artist1.id
  })

exhibit1a.save()


exhibit1b = Exhibit.new({
  "title" => "The Last Supper",
  "category_id" => category1.id,
  "artist_id" => artist1.id
  })

exhibit1b.save()

exhibit2a = Exhibit.new({
  "title" => "Melting Watch",
  "category_id" => category1.id,
  "artist_id" => artist2.id
  })

exhibit2a.save()

exhibit2b = Exhibit.new({
  "title" => "The Burning Giraffe",
  "category_id" => category1.id,
  "artist_id" => artist2.id
  })

exhibit2b.save()

exhibit3a = Exhibit.new({
  "title" => "Wives",
  "category_id" => category4.id,
  "artist_id" => artist3.id
  })

exhibit3a.save()



binding.pry
nil
