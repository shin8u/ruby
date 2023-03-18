if ARGV.count < 1
    puts "Введите аргумент"
    return 
end
  
user = ARGV[0]
puts "Привет, #{user}!"

puts "Какой у вас любимый язык программирования?"
lang = STDIN.gets.chomp.downcase

if lang == "ruby"
    puts "подлиза"
elsif lang == "python"
    puts "Попался, питонист!"
else 
    puts "Скоро будет ruby"
end

puts 'введите команду ruby'
ruby_command = STDIN.gets.chomp
system "ruby -e \'#{ruby_command}\'"

puts 'введите команду ОС'
os_command = STDIN.gets.chomp
system os_command
