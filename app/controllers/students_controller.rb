class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student_path
    @activate = Student.find(params[:id])
    if @activate.active == false
      @activate.update(active: true)
    else
      @activate.update(active: false)
    end
    render "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
