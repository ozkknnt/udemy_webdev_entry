class User

  attr_accessor :name
  # 読み取り専用にしたい場合
  # attr_readerとする

  def initialize(name)
    @name = name
  end


  # attr_accessorで下記を記述しているのと同様のこと。
  # 
  # def name
  #   @name
  # end

  # def name=(value)
  #   @name = value
  # end

end

emma = User.new('Emma')
puts emma.name

emma.name = 'Emily'
puts emma.name
