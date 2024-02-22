class User
    attr_reader :username
    def initialize(username)
      self.username = username
    end
    def username=(new_username)
      raise ArgumentError, "Username cannot be empty or nil" if new_username.nil? || new_username.empty?
      @username = new_username
    end
  end
  
  user1 = User.new("Alice")
  puts "Valid username:", user1.username
  
  begin
    user2 = User.new(nil)
  rescue ArgumentError => e
    puts "Error:", e.message
  end
  