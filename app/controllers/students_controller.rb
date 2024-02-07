class StudentsController < ApplicationController
  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :method_not_allowed
    end
  end

  # DELETE /students/:id
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end

  # GET /schools/:school_id/classes/:class_group_id/students
  def index
    @class_group = ClassGroup.find(params[:class_group_id])
    @students = @class_group.students

    render json: @students
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :surname, :class_group_id)
  end
end
