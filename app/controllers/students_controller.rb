class StudentsController < ApplicationController
	def index
	end

  def show
    student_id =params[:id]
    @student = Student.find(student_id)
  end

  def new

    @student = Student.new

  end
  def create
  @student = Student.new(student_params)
    if @student.save
      redirect_to(students_path())
    else
      flash[:error]='Student create faild!!!:('
      render :new
    end
  end
  def edit
    @student=Student.find(params[:id])
  end
  def update
    @student=Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to student_path(@student)
      else
        render :edit
    end
  end
  def destroy
    @student=Student.find(params[:id])
    student_name=@student.name
    @student.destroy
    flash[:notice] = "Student with name: #{student_name} is successfuly deleted :)"
    redirect_to students_path
  end

  private

    def student_params
      params.require(:student).permit(:name, :price, :description)
    end
end
