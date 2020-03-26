require_relative("../db/sql_runner")

class Movie

  attr_reader :id
  attr_accessor :title, :genre

  def initialize(details)
    @id = details ['id'].to_i if details ['id']
    @title = details ['title']
    @genre = details ['genre']
  end

  def save
    sql = "INSERT INTO movies(title, genre) VALUES ($1, $2) RETURNING id"
    values = [@title, @genre]
    movie = SqlRunner.run(sql, values).first
    @id = movie['id'].to_i
  end

end
