class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades 
    students_grades = Student.all
    render json: students_grades.order(:grade)
    end

    def highest_grade
    highest_grades = Student.all
    new_best = highest_grades.max do |testing|
       testing.grade 
    end
    render json: new_best
 
    end

    
end
