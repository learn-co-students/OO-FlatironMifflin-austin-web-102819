class Manager
    attr_accessor :name, :department, :age
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    def self.all
        @@all
    end
    def employees
        Employee.all.select { |emp| emp.manager == self.name}
    end
    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end
    def self.all_departments
        @@all.map {|dep| dep.department}
    end
    def self.average_age
        arr = []
        @@all.each {|ages| arr << ages.age}
        arr.reduce(:+).to_f / arr.size
    end
end
