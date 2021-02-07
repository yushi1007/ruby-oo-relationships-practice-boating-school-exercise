class Student

@@all = []
attr_accessor :name

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def add_boating_test(student, test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
    
end

end
