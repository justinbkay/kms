class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def index
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def search
    names = params[:name].scan(/(\*|\w+)/)
    # remove the placeholder * and it returns all lastnames
    begin
      names[0] = names[0][0].to_s.gsub(/\*/,'')
      names[1] = names[1][0].to_s unless names[1].nil?
    rescue
      names[0] = ''
    end
    @students = Student.search_by_name(names)
  end

  def office_direct_referrals
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :student_number, :grade, :year, :active)
  end

end
