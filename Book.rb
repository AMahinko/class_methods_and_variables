class Book
@@on_shelf = []
@@loaned = []


def initialize(title, author, isbn)
  @title = title.to_s
  @author = author.to_s
  # @genre = genre.to_s
  @isbn = isbn.to_s
  @borrowed = false
  @due_date = nil
end

attr_accessor :due_date, :borrowed
attr_reader :title

def self.debug_purge
  @@on_shelf.each {|item| @@on_shelf.delete(item)}
  @@loaned.each {|item| @@loaned.delete(item)}
  puts @@on_shelf
  puts @@loaned
end

def self.debug_show
  puts @@on_shelf
  puts "---------------------------------------------------------------*"
  puts @@loaned
end

def self.shelf(var)

  @@on_shelf << var

end

def self.create
  puts "Title:"
  title = gets.chomp
  puts "Author:"
  author = gets.chomp
  puts "ISBN:"
  isbn = gets.chomp
  created = Book.new(title, author, isbn)
  @@on_shelf << created
  puts "#{created.title} has been printed and shelved!"
  return created
end

def available?
  return true if @borrowed == false
  return false if @borrowed == true
end

def self.available
  return @@on_shelf
end

# def self.borrowed
#   return @@loaned
# end

def self.borrow(book)
  p "--------------"
  p @@on_shelf
  p "==========="
  p @@loaned
  p "-------------"
  if book.available? == true
    @@loaned << book
    book.due_date = book.current_due_date
    @@on_shelf.delete(book)

  else
    puts "#{book.title} is not available"
  end
  book.borrowed = true
  p "--------------"
  p @@on_shelf
  p "==========="
  p @@loaned
  p "-------------"
end

def self.return(book)
  p "--------------"
  p @@on_shelf
  p "==========="
  p @@loaned
  p "-------------"
  if book.available? == false
    @@on_shelf  << book
    book.due_date = nil
    @@loaned.delete(book)

  else
    puts "#{book.title} is not loaned"
  end
  book.borrowed = false
  p "--------------"
  p @@on_shelf
  p "==========="
  p @@loaned
  p "-------------"
end

def current_due_date
  Time.now #+ 60 * 60 * 24 * 7
end


def self.overdue

  @@loaned.each do |book|
    if book.due_date < Time.now + 1
      Book.return(book)
    end
  end
end

def self.browse
  @@on_shelf.sample
end

end
