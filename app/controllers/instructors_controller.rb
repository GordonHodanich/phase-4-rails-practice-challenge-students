class InstructorsController < ApplicationController

  def index
    instructors = Instructor.all
    render json: instructors
  end

  def show
    instructor = Instructor.find(params[:id])
    render json: instructor
  end 

  def create
    instructor = Instructor.create(params.permit(:name))
    render json: instructor, status: :created
  end

  def update
    instructor = instructor.find(params[:id])
    instructor.update(params.permit(:name))
    render json: instructor, status: :accepted
  end

  def destroy
    instructor = Instructor.find(params[:id])
    instructor.destroy
    head :no_content
  end

end