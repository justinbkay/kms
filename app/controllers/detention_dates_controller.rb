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

    if @detention_date.has_scheduled_detentions?
      DetentionScheduler.new(dd: @detention_date).reschedule
    end
  end

  def mark_complete
    @detention = Detention.find(params[:detention_id])

    if @detention.update_attributes(completed: true)
      render json: {complete: true}
    else
      render json: {complete: false}
    end
  end

  def reschedule
    @detention = Detention.find(params[:detention_id])
    if DetentionScheduler.new(detention: @detention).reschedule_single
      render json: {complete: true}
    else
      render json: {complete: false}
    end
  end

end
