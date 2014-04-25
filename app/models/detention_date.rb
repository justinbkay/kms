class DetentionDate < ActiveRecord::Base
  has_many :detentions

  validates :date, presence: true

  def to_s
    date.strftime("%m/%d/%Y")
  end
end
