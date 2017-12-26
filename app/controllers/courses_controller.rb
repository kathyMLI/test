class CoursesController < ApplicationController
  def index
    @courses = Course.select("name")
    #@courses = Course.select("students")
    #@courses = Student.all()
    #@courses = Tarea.select("id, titulo, descripcion").where(:activo => true).order("id DESC");
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
