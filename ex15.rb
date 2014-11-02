filename = gets.chomp

txt = File.open(filename)
puts "#{txt}"

puts "Here's your file #{filename}:"
print txt.read
txt.close

print "Type the filename again: "
file_again = gets.chomp
puts "file_again = #{file_again}"

txt_again = open(file_again)

print txt_again.read

#如果有東西在 ARGV 裡，標準的gets 會認為將第一個參數當成檔案而嘗試從裡面讀東西。
#在要從使用者的輸入（如stdin）讀取資料的情況下我們必須明確地使用 STDIN.gets。