class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades 
    students_grades = Student.all.order(:grade)
    new_data =  students_grades.map do |testing|
        testing.grade
    end
    new_data 
    end

    def highest_grade
    highest_grades = Student.all
    new_best = highest_grades.max do |testing|
       testing.grade
    end
    render json: new_best
 
    end

    
end
