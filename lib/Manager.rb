require_relative 'Employee.rb'
class Manager

    attr_accessor :employees
    attr_reader :name, :department, :age

    @@all = []
   
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        @@all << self
    end

    def employees
        Employee.all.select {|e| e.manager == self.name}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    def self.all_departments
        arr = []
        @@all.each {|m| arr << m.department}
        arr.uniq
    end

    def self.average_age
        (@@all.reduce(0) {|sum, m| sum + m.age}) / @@all.count
    end
end
