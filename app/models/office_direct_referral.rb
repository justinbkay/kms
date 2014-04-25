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
    problems = []

    [:fighting, :assault, :insubordination, :left_supervised_area, :threat_of_physical_harm, :harrassment, :chronic_bullying, :obscene_act, :weapon, :destruction_of_property, :theft, :profanity, :truancy, :tobacco_drugs, :other_behavior].each do |b|
      problems << b.to_s.titleize if self.send(b) == true
    end

    return problems.join(', ')
  end

end
