class Block < ActiveRecord::Base
  validates :number, :presence => true
  validates :number, :unique => true
end
