numbers = [1,2,3,4,5]
# 書き方１
numbers.each do |number|
    puts number  
end

# 書き方2
numbers.each { |number| 
    puts number
}

# 書き方3
numbers.each {|number| puts number }

# 文字列
colors = ['red','green','blue']
colors.each do |color|
    puts color
end

# 連想配列
scores = {nakamura: 90 , sato: 80, takahashi: 100 }
scores.each do |name, score|
    puts "#{name},#{score}"
end

# 基本的にはrubyではforは使わずeachを使う。
# for
for number in numbers do
    puts number
end