class DetentionDatesController < ApplicationController
  before_filter :security

  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    beginning = @date.beginning_of_month
    ending = @date.end_of_month
    @detention_dates = DetentionDate.where(date: beginning..ending).group_by(&:date)
  end

  def show
    @detention_date = DetentionDate.find(params[:id])
  end

  def update
    @detention_date = DetentionDate.find(params[:id])

    @detention_date.update_attributes({blacked_out: true})

    #TODO If we update a date with detentions, we need to reschedule them

    respond_to do |format|
        format.json { render :json => "success" }
    end
  end

end
