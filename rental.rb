class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
    end
end
