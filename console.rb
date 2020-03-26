require_relative( 'models/casting' )
require_relative( 'models/star' )
require_relative( 'models/movie' )

star1 = Star.new({'first_name' => 'Nick', 'last_name' => 'Cage'})
star1.save
star2 = Star.new({'first_name' => 'Jackie', 'last_name' => 'Chan'})
star3 = Star.new({'first_name' => 'Bruce', 'last_name' => 'Willis'})

movie1 = Movie.new({'title' => 'Gone With the Wind', 'genre' => 'Comedy' })
movie1.save
movie2 = Movie.new({'title' => 'Night at the museum', 'genre' => 'Horror' })
movie3 = Movie.new({'title' => 'A bugs life', 'genre' => 'Documentry' })

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 5000})
casting1.save
casting2 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 500})
casting3 = Casting.new({'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => 50})
