class Theater
  attr_reader :seats
  attr_accessor :patrons
  def initialize(seats)
    @seats = seats
    @patrons = 0
  end

  def patrons(number)
    @patrons = number
  end
end
