class OfficeDirectReferral < ActiveRecord::Base
  belongs_to :student
  belongs_to :user
  belongs_to :block

  validates :student_id, :presence => true
  validates :block_id, :presence => true
  validates :user_id, :presence => true
  validates :incident_date, :presence => true

  alias :kmsteacher :user
end
