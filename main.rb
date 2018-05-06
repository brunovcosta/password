require 'io/console'

puts 'service domain (ex: google.com):'
service = gets.chomp

puts 'your secret key'
key = STDIN.noecho(&:gets).chomp

alphabet = '{}()[]#:;^,.?!|&_`~@$%/\\=+-*"\' '+
'abcdefghijklmnopqrstuvwxyz'+
'ABCDEFHGIJKLMNOPQRSTUVWXYZ'+
'0123456789'

puts "password: "
key.chars.map.with_index do |char,index|
	new_index = (alphabet.index service[index % service.size]) + (alphabet.index char)
	print alphabet[new_index % alphabet.size]
end
print "\n"
