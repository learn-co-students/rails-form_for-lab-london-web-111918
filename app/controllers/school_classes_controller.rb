class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @shool_class = SchoolClass.create(school_params)
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @shool_class.update(school_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
