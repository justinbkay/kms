class DetentionScheduler
  def initialize(odr: nil, user: nil, dd: nil)
    @odr = odr
    @current_user = user
    @detention_date = dd
  end

  def assign_detention
    if @odr.lunch_detention?
      # check to see if detention was already assigned
      if @odr.detention.nil?
        detention_day = find_next_available_detention_slot()
        @odr.create_detention(detention_type: :lunch, assigned_by: @current_user.id, detention_date_id: detention_day.id)
      end
    end
  end

  def reschedule
    # We'd want to grab all currently scheduled detentions after the date we are rescheduling
    detentions = Detention.joins(:detention_date).where("detention_dates.date >= ? AND completed = 'f'", @detention_date.date).order('detentions.created_at')
    # We'd then want to schedule them each starting with the oldest detention date
    detentions.each do |d|
      detention_day = find_next_available_detention_slot()
      d.update_attributes(detention_date_id: detention_day.id)
    end
  end

  private

  def find_next_available_detention_slot
    start_day = Date.today

    opening = nil

    while opening == nil
      opening = check_schedule(start_day)
      start_day += 1
    end

    return opening
  end

  def check_schedule(date)
    open_date = DetentionDate.where("date > ? AND blacked_out = 'f'", date).first

    open_date.detentions.count < 13 ? open_date : nil
  end

end
