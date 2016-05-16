# Reading List

# require gems
require 'sqlite3'
require 'faker'


class ReadList
  attr_accessor :readinglist, :db

  # Retrieve data from database
  def initialize
    
      # create SQLite3 database
    @db = SQLite3::Database.new("read-list.db")
    @db.results_as_hash = true
    # create a read-list table (if it doesn't already exist)
    create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS read_list(
      id  INTEGER PRIMARY KEY,
      title VARCHAR(255),
      author VARCHAR(255),
      genre VARCHAR(255),
      read BOOLEAN
    )
    SQL
    @db.execute(create_table_cmd)
    @readinglist = @db.execute("SELECT * FROM read_list")
  end
  
  #method to list all books that have been read
  def books_read
    puts "\nBooks you've read:"
    puts "========================="
    # for each book that has been read, print the title, author, and genre of the book.
    @readinglist.each do |book|
      if book['read'] == 'true'
        puts "Title: #{book['title']}
              Author: #{book['author']}
              Genre: #{book['genre']}"
        puts "========================="
      end
    end
  end
  # method to list all books that have not been read
  def books_to_read
    puts "\nBooks to read:"
    puts "========================="
    # for each book that has not been read, print the title, author, and genre of the book.
    @readinglist.each do |book|
      if book['read'] == 'false'
        puts "Title: #{book['title']}
              Author: #{book['author']}
              Genre: #{book['genre']}"
        puts "========================="
      end
    end
  end
  # method to add books to the reading list
  def add_to_list(title, author, genre, read='false')
    @db.execute("INSERT INTO read_list (title, author, genre, read) VALUES (?, ?, ?, ?)", [title, author, genre, read])
    @readinglist = @db.execute("SELECT * FROM read_list")
  end
  # method to finish reading a book on the to-read list.
  def finish_reading(title)
    @db.execute("UPDATE read_list SET read='true' WHERE title=?", [title])
    @readinglist = @db.execute("SELECT * FROM read_list")
  end
  # Recommend a random book of the specified genre
  def recommend_book(genre)
    add_to_list(Faker::Book.title, Faker::Book.author, genre, 'false')
  end
end

readlist = ReadList.new
readlist.books_read
readlist.books_to_read
readlist.recommend_book('Science Fiction')
readlist.books_to_read
# readlist.add_to_list("Wizard's First Rule", "Terry Goodkind", "Fantasy")
# readlist.finish_reading("Wizard's First Rule")
# readlist.books_to_read
# p readinglist
# books_read(readinglist)

# #add a test book
# db.execute ('INSERT INTO read_list (title, author, genre, read) VALUES ("The Way Into Chaos", "Harry Connolly", "Fantasy", "true")')

# # p readinglist
  # # List each book and make note of whether it has been read.
  # readinglist.each do |book|
  #   if book['read'] == 'true'
  #   puts "#{book['title']} is written #{book['author']}. Its genre is #{book['genre']}. You have read this book."
  #   else
  #   puts "#{book['title']} is written #{book['author']}. Its genre is #{book['genre']}. You have not read this book."
  #   end
  # end