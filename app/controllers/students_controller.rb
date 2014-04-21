class StudentsController < ApplicationController
  def new
  end

  def index
  end

  def create
  end

  def edit
  end

  def update
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
end
