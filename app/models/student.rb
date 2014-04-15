class Student < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :student_number, :presence => true
  validates :grade, :presence => true
  validates :year, :presence => true
end
