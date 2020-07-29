class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @activate = Student.find(params[:id])
    if @activate.active == false
      @active.update(active: true)
    else
      @active.update(active: false)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
