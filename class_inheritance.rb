class Employee

    def initialize(employee_name, title, salary, boss)
        @employee_name = employee_name
        @title = title
        @salary = salary
        @boss = boss
        if !@boss.nil?
            @boss.add_subordinates(self)
        end
        @subordinates = []
    end

    def bonus(multiplier)
        salary * multiplier
    end

    attr_reader :salary, :employee_name, :subordinates

end 

class Manager < Employee
    def initialize(employee_name, title, salary, boss)
        super
        @subordinates = []
    end

    def add_subordinates(subordinate)
        @subordinates << subordinate
    end

    def bonus(multiplier)
        queue = subordinates
        sum = 0
        while !queue.empty?
            subordinate = queue.shift
            queue += subordinate.subordinates
            sum += subordinate.salary
        end
        sum * multiplier
    end

    attr_reader :subordinates 

end

Ned = Manager.new("ned", "founder", 1000000, nil)
Darren = Manager.new("darren", "ta manager", 78000, Ned)
Shawna = Employee.new("shawna", "ta", 12000, Darren)
David = Employee.new("david", "ta", 10000, Darren)
Darren.subordinates.each { |person| p person.employee_name }
p Ned.bonus(5) # => 500_000
p Darren.bonus(4) # => 88_000
p David.bonus(3) # => 30_000
Darren.subordinates
p Ned





