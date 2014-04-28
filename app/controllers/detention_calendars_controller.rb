class DetentionCalendarsController < ApplicationController
  before_filter :security

  def index
    @beginning = Date.today.beginning_of_week
    @ending = @beginning + 7
    @detention_dates = DetentionDate.where(date: @beginning..@ending, blacked_out: false).order(:date)
  end
end
