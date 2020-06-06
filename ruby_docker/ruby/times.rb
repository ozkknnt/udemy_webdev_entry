# 書き方1
5.times do
    puts 'Hello!'
end

# 書き方2
5.times do |i|
    puts "#{i}: Hello!"
end

# 書き方3
5.times {|i| puts "#{i}: Hello!"}

# 書き方4
5.times {|i| 
    puts "#{i}: Hello!"
}

