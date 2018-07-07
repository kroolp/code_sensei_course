class Book
  def initialize(title, number_of_pages)
    @title = title
    @number_of_pages = number_of_pages
  end

  def to_s
    "#{@title} has #{@number_of_pages} pages"
  end
end

book = Book.new("Bolek i Lolek", 120)

puts book
