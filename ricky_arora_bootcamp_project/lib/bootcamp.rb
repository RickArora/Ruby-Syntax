class Bootcamp
    
    def initialize(name, slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, key| hash[key] = [] }
    end

    def name()
        @name 
    end

    def slogan() 
        @slogan
    end

    def teachers()
        @teachers
    end

    def students()
        @students
    end

    def grades()
        @grades
    end 

    def name=(name)
        @name = name
    end

    def slogan=(slogan)
        @slogan = slogan
    end

    def teachers=(teachers)
        @teachers = teachers
    end

    def students=(students)
        @students = students
    end

    def grades=(grades)
        @grades = grades
    end

    #end of setters & getters

    def hire(string)
        @teachers.push(string)
    end

    def enroll(string)
        if @students.length < @student_capacity
            @students.push(string)
            return true 
        end
        return false
    end

    def enrolled?(string)
        @students.include?(string)
    end

    def student_to_teacher_ratio()
        (@students.length / @teachers.length).floor
    end

    def add_grade(string, number)
        if enrolled?(string)
            @grades[string] << number
            return true
        end
        return false
    end

    def num_grades(strings)
        @grades[strings].length
    end

    def average_grade(string)
        if num_grades(string) == 0
            return nil
        end
        total = 0
        @grades[string].each do |add_to_total|
            total = total+add_to_total
        end
        total=total/num_grades(string)
    end


end
