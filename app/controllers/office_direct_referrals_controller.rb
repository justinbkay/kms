class OfficeDirectReferralsController < ApplicationController
  before_filter :security

  def new
    @office_direct_referral = OfficeDirectReferral.new(user_id: current_user.id)
  end

  def create
    @office_direct_referral = OfficeDirectReferral.new(referral_params)
    @office_direct_referral.incident_date = parse_da_time(params[:incident_date], params[:incident_time])

    if @office_direct_referral.save
      redirect_to root_url
    else
      @student = Student.find(params[:office_direct_referral][:student_id])
      render :new
    end
  end

  def index
    @office_direct_referrals = OfficeDirectReferral.all
  end

  def edit
  end

  private

  def referral_params
    params.require(:office_direct_referral).permit!
  end

  private

  def parse_da_time(idate, itime)
    zone = "Mountain Time (US & Canada)"
    begin
      preparsed_date = Date.strptime(idate, "%m/%d/%Y")
      return ActiveSupport::TimeZone[zone].parse("#{preparsed_date.to_s} #{itime}:00")
    rescue
      return nil
    end
  end

end
