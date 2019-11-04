class Employee
    attr_accessor :name, :salary, :manager
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    def self.all
        @@all
    end
    def manager_name
        self.manager.name
    end
    def self.paid_over(sal)
        @@all.select { |num| num.salary > sal}
    end
    def self.find_by_department(department)
        @@all.find {|emp| emp.manager.department == department}
    end
    def tax_bracket
        @@all.select {|emp| emp.salary.between?(self.salary - 1000, self.salary + 1000)}
    end
end
