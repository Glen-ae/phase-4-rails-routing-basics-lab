class StudentsController < ApplicationController
    def index
        student = Student.all
        render json: student
    end

    def grades
        render json: Student.all.order(grade: :desc)
    end


  def highest_grade
    render json: Student.all.order(grade: :desc).limit(1)[0]
  end

end
