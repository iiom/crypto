# https://ru.wikipedia.org/wiki/MD5
# https://ru.wikipedia.org/wiki/SHA-1
# https://ru.wikipedia.org/wiki/SHA-2

require 'digest'
puts "Выберите метод шифрования(1/2):\n1. MD5\n2. SHA1"
user_choice = STDIN.gets.to_i
puts "Введите данные для шифрования"
user_input = STDIN.gets.chomp

case
  when user_choice == 1
    puts "\nшифрованное сообщение при помощи MD5 #{Digest::MD5.hexdigest(user_input)}"
  when user_choice == 2
    puts "\nшифрованное сообщение при помощи SHA1 #{Digest::SHA1.hexdigest(user_input)}"
end
