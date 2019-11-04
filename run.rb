require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager_serina = Manager.new("serina", "IT", 40)
manager_jim = Manager.new("jim", "IT", 42)
mei = Employee.new("mei", 1000, manager_serina.name)

binding.pry
puts "done"
