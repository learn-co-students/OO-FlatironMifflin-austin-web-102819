require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("Michael Scott", "Marketing", 45)
daryl = Manager.new("Daryl", "Warehouse", 35)
dwight = Employee.new("Dwight Schrute", 100000, michael)
toby = Employee.new("Toby", 99000, michael)
jim = Employee.new("Jim", 1000, michael)
binding.pry
puts "done"
