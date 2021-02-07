class BoatingTest

    @@all = []

    attr_accessor :student, :test_name, :test_status, :instructor

    def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name 
    @test_status = test_status 
    @instructor = instructor
    @@all << self
    end

    def self.all
    @@all
    end
end
