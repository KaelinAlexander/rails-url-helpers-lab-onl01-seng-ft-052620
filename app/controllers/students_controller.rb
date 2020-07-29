class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @activate = Student.find(params[:id])
    if @activate.active == false
      @activate.update(active: true)
    else
      @activate.update(active: false)
    end
    redirect_to student_path(@activate)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
