class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(paid_over_amount)
        @@all.select {|employee| employee.salary > paid_over_amount}
    end

    def self.find_by_department(department)
        manager = Manager.all.find {|d| d.department == department}
        @@all.find {|e| e.manager_name == manager.name}
    end

    def tax_bracket
        @@all.select {|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000)}
    end
end
