books = {
  Harry_Potter: 10,
  Kings_Obsession: 9,
  Golden_Compass: 6,
  Twilight: 4
}
puts "This is your book storage which includes ratings for your books. What would you like to do?"
puts "Type 'add' to add another book to your storage"
puts "Type 'display' to display the books in your storage"
puts "Type 'update' to update your ratings"
puts "Type 'delete' to remove a book."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What book would you like to add?"
  title = gets.chomp
  if books[title.to_sym].nil?
    puts "What rating would you like to give this book (0 to 10)?"
    rating = gets.chomp
    books[title.to_sym] = rating.to_i
    puts "{#{title} has been added with rating #{rating}.}"
  else
    puts "That book already exists and has a rating of #{books[title.to_sym]}"
  end

when 'display'
  books.each do|book, rating|
    puts "#{book}: #{rating}"
  end

when 'update'
  puts "What book would you like to update?"
  title = gets.chomp
  if books[title.to_sym].nil?
    puts "This book does not exist in your storage!"
  else
    puts "What new rating would you like to give to this book (0 to 10)?"
  rating = gets.chomp
  book[title.to_sym] = rating.to_i
  puts "#{title} with new rating #{rating} has been added!"
end

when 'delete'
  puts "What book would you like to delete?"
  title =  gets.chomp
  if books[title.to_sym].nil?
    puts "This book does not exist in your storage!"
  else
    books.delete(title.to_sym)
    puts "#{title} has been removed from your storage!"
  end

else
  puts "You haven't given a correct option!"
end
