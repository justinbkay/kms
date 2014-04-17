class OfficeDirectReferralsController < ApplicationController
  before_filter :security

  def new
  end

  def create_major

  end

  def index
  end

  def edit
  end

  def major_form
    @office_direct_referral = OfficeDirectReferral.new(user_id: current_user.id)
    render '_major_form'
  end

  def minor_form
    render '_minor_form'
  end

  def student_search
    render json: Student.where("lower(first_name) like ? AND active='t'", "%#{params[:term].downcase}%").map { |s| [id: s.id, grade: s.grade, label: "#{s.first_name} #{s.last_name}  (#{s.student_number})"]}.flatten
  end
end
