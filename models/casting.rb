require_relative("../db/sql_runner")

class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id, :fee

  def initialize(details)
    @id = details ['id'].to_i if details ['id']
    @movie_id = details ['movie_id'].to_i
    @star_id = details ['star_id'].to_i
    @fee = details ['fee'].to_i
  end

  def save
    sql = "INSERT INTO castings(movie_id, star_id, fee) VALUES ($1, $2, $3) RETURNING id"
    values = [@movie_id, @star_id, @fee]
    castings = SqlRunner.run(sql, values).first
    @id = castings['id'].to_i
  end

end
