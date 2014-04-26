class DetentionDate < ActiveRecord::Base
  has_many :detentions

  validates :date, presence: true

  def to_s
    date.strftime("%m/%d/%Y")
  end

  def has_scheduled_detentions?
    self.detentions.where(completed: false).size > 0 ? true : false
  end
end
