class User
  def initialize(name)
    @name = name 
  end

  def say
    puts "say at #{@name}"
  end

  private
    def hello
      puts "Hello! I am #{@name}"
    end

end

user = User.new('Nakamura')
user.say