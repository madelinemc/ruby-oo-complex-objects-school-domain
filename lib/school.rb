require'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name =  name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= [] #long way = if roster[grade] do nothing else roster[grade] add new value []
        @roster[grade] << "#{name}"
    end

    def grade(grade_num)
        #retrieve students from a grade - return array of all students in that grade
        @roster[grade_num]
    end

    def sort
        #return hash with sorted key/value list where keys are the grades and values are the array
        #of names in alphabetical order.
        @roster.each do |grade, student_array|
            student_array.sort!
        end
        @roster
    end

end
