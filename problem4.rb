class Appliance
    def show_info
      puts "This is a household appliance."
    end
  end
  class Refrigerator < Appliance
    def initialize(capacity)
      @capacity = capacity
    end
    def show_refrigerator_info
      puts "This is a refrigerator with a capacity of #{@capacity} cubic feet."
    end
  end
  class Microwave < Appliance
    def initialize(wattage)
      @wattage = wattage
    end
    def show_microwave_info
      puts "This is a microwave with a wattage of #{@wattage} watts."
    end
  end
  
  refrigerator = Refrigerator.new(20)
  microwave = Microwave.new(1000)
  refrigerator.show_info 
  microwave.show_info     
  refrigerator.show_refrigerator_info 
  microwave.show_microwave_info        
  