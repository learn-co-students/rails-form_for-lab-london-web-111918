class SchoolClassesController < ApplicationController
  before_action :find_schoolclass, only: [:show, :edit, :update]

  def index
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  def show
  end

  def edit
  end

  def update
    @schoolclass.update(school_class_params)
    redirect_to school_class_path(@schoolclass)
  end

  private

  def find_schoolclass
    @schoolclass = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
