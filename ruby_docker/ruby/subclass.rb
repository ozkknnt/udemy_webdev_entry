class User   # 親クラス
  def initialize(name)
    @name = name
  end

  def hello
    puts "Hello! I am #{@name}"
  end

end

nakamura = User.new('Nakamura')
nakamura.hello

class AdminUser < User # 子クラス
  def hello_admin
    puts "Hello! I am #{@name} from AdminUser"
  end

  def hello
    puts "Admin"
  end

end

sato = AdminUser.new('Sato')
sato.hello