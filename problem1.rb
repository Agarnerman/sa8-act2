class Laptop
    def initialize(brand, model)
      @brand = brand
      @model = model
    end
    def get_brand
      @brand
    end
    def get_model
      @model
    end
  end
  
  laptop = Laptop.new("Apple", "MacBook Pro3")
  puts "Brand: #{laptop.get_brand}"
  puts "Model: #{laptop.get_model}"
  