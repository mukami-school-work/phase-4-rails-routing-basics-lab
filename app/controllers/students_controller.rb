class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students 
    end
    
    def highest_grade

        students = Student.maximum(:grade)
        students1 =  Student.select("Max(grade) as max_grade").first.attributes
        render json: students
    end
end
