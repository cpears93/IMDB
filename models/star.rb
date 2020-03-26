require_relative("../db/sql_runner")

class Star

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(details)
    @id = details ['id'].to_i if details ['id']
    @first_name = details ['first_name']
    @last_name = details ['last_name']
  end

  def save
    sql = "INSERT INTO stars(first_name, last_name) VALUES ($1, $2) RETURNING id"
    values = [@first_name, @last_name]
    star = SqlRunner.run(sql, values).first
    @id = star['id'].to_i
  end

end
