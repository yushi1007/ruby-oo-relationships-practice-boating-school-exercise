require 'pry'
class Instructor

        @@all = []
        attr_accessor :instructor_name
        
        def initialize(instructor_name)
            @instructor_name = instructor_name
            @@all << self
        end
        
        def self.all
            @@all
        end

        # Instructor#all_students should return an array of students who took a boating test with this specific instructor.
        def all_tests
        # get all the instructor's test
        # binding.pry
        BoatingTest.all.select{|test| test.instructor == self}
        end
    
        def all_students
        # get all the student -> get the instant of the student
        # self.all_tests.map{|test| test.student}
        # binding.pry
        self.all_tests.map(&:student)
        end
        # passed_students should return an array of students who passed a boating test with this specific instructor.
        def all_passed_tests
        # passed_tests.all.map{|test| test.student}
        # passed_tests.all.map(&:student)
        self.all_tests.select{|test| test.test_status == "passed"}
        end
        def passed_students
        #binding.pry
        self.all_passed_tests.map{|test| test.student}
        end

        def find_student(name)
            # find student in the student.all
            Student.all.find{|student| student.name == name}
        end

        def find_test(test_name_str)
        BoatingTest.all.find{|test| test.test_name == test_name_str}
        end

        def pass_student(name_str, test_name_str)
            #Create a BoatingTest with the found student
            #Student, test_name, test_status, instructor
            test = find_test(test_name_str)
            if test && test.student.name == name_str
                test.test_status = "passed"
            else
            student = find_student(name_str) #this (name) come from pass_student
            BoatingTest.new(student, test_name_str, "passed", self)
            end
           # binding.pry
        end
    end