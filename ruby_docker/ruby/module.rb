module Driver
  def self.run
    puts 'Run'
  end

  def self.stop
    puts 'Stop'
  end

end

Driver.run
Driver.stop


# NG 継承もインスタンス化もできない
# driver = Driver.new

# module TaxiDrive < Driver
# end