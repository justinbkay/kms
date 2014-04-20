class Student < ActiveRecord::Base
  has_many :office_direct_referrals
  has_many :minor_direct_referrals

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :student_number, :presence => true
  validates :grade, :presence => true
  validates :year, :presence => true

  def to_s
    first_name + ' ' + last_name
  end

  def name_plus_number
    to_s + " (#{student_number})"
  end
end
