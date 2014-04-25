class DetentionDate < ActiveRecord::Base
  has_many :detentions

  validates :date, presence: true

end
