class OfficeDirectReferral < ActiveRecord::Base
  belongs_to :student
  belongs_to :user
  belongs_to :block
  has_one :detention

  validates :student_id, :presence => true
  validates :block_id, :presence => true
  validates :user_id, :presence => true
  validates :incident_date, :presence => true

  alias :kmsteacher :user

  def formatted_date
    incident_date.strftime("%m/%d/%Y")
  end

  def formatted_time
    incident_date.strftime("%l:%M%P")
  end

  def problem_behavior
    
  end
end
