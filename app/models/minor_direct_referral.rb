class MinorDirectReferral < ActiveRecord::Base
  belongs_to :student
  belongs_to :user

  validates :student_id, :presence => true
  validates :block_id, :presence => true
  validates :user_id, :presence => true
  validates :incident_date, :presence => true
end
