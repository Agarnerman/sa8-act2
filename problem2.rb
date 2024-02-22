class Gadget
    attr_reader :name
  
    def initialize(name, price)
      @name = name
      @price = price
    end
    attr_writer :price
    def print_info
      puts "Name: #{@name}"
      puts "Price: $#{@price}"
    end
  end
  
  gadget = Gadget.new("Smartphone", 500)
  puts "Gadget name:", gadget.name
  gadget.price = 450
  puts "\nUpdated Gadget information:"
  gadget.print_info
  