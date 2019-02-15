# Задача 23-3
# Напишите программу, которая шифрует введённое пользователем слово одним из механизмов MD5 или SHA1.
#
#   Например:
#
#   Введите слово или фразу для шифрования:
#   Хороший программист
#
# Каким способом зашифровать:
# 1. MD5
# 2. SHA1
# 1
#
# Вот что получилось:
#           9136d475e0fbf87e4fcdc9cb6c38ccc4
# Подсказка
# Для шифровки введённых пользователем данных, подключите модуль Digest и воспользуйтесь функцией
# Digest::MD5.hexdigest или Digest::SHA1.hexdigest.
#
#   В качестве параметра передайте нужную строку.
#
#   Почитайте также для чего нужны подобные методы и где они применяются:
#
# https://ru.wikipedia.org/wiki/SHA-1
#
# https://ru.wikipedia.org/wiki/MD5
#
# SHA-1
# Secure Hash Algorithm 1 — алгоритм криптографического хеширования. Описан в RFC 3174. Для входного
# сообщения произвольной
#
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
