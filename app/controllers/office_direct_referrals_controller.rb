class OfficeDirectReferralsController < ApplicationController
  before_filter :security

  def new
    @office_direct_referral = OfficeDirectReferral.new(user_id: current_user.id)
  end

  def create
    @office_direct_referral = OfficeDirectReferral.new(referral_params)
    zone = "Mountain Time (US & Canada)"

    @office_direct_referral.incident_date = ActiveSupport::TimeZone[zone].parse("#{params[:incident_date]} #{params[:incident_time]}:00")

    if @office_direct_referral.save
      redirect_to root_url
    else
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

end
