class SchoolClassesController < ApplicationController
  def new
    @schoolclasses = SchoolClass.new
  end

  def create
    @schoolclasses = SchoolClass.create(schoolclasses_params)
    redirect_to school_class_path(@schoolclasses)
  end

  def show
    @schoolclasses = SchoolClass.find(params[:id])
    
  end

  def edit
    @schoolclasses = SchoolClass.find(params[:id])
  end

  def update
    @schoolclasses = SchoolClass.find(params[:id])
    @schoolclasses.update(schoolclasses_params)
    redirect_to school_class_path(@schoolclasses)
  end

  private

  def schoolclasses_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
