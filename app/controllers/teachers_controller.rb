class TeachersController < ApplicationController
  def index
    #@teachers = Teacher.all()
    @teachers = Teacher.select("name").where(:name => "Carla");
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
