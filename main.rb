require_relative "caesar"

puts "Type the message:"

message = gets.chomp

puts "\nType the cipher key: "

key = gets.chomp.to_i

puts "\nResult:"
puts caesar(message,key)