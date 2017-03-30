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

attr_accessor :due_date
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

def self.borrowed
  return @@loaned
end

def self.borrow(book)
  p "--------------"
  p @@on_shelf
  p "==========="
  p @@loaned
  p "-------------"
  if book.available? == true
    @@loaned << book
    @borrowed = true
    @@on_shelf.delete(book)

  else
    puts "#{book.title} is not available"
  end
  p "--------------"
  p @@on_shelf
  p "==========="
  p @@loaned
  p "-------------"
end


end
