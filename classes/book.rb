require_relative 'rental'

class Book
  attr_accessor :title, author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(date, person)
    rental.new(date, self, person)
  end
end
