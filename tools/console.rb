require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")
jason= Student.new("Jason")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
shi= Instructor.new("Mr.Shi")

#student, test_name, test_status, instructor
test1= BoatingTest.new(spongebob, "accounting", "passed", puff)
test2= BoatingTest.new(jason, "101 boat", "pending", puff)
test3= BoatingTest.new(patrick, "accounting", "passed", krabs)

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

krabs.all_tests
puff.all_students
puff.passed_students
krabs.passed_students
krabs.pass_student("Patrick", "accounting")
puff.pass_student("Jason", "101 boat")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

