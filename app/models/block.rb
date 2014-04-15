class Block < ActiveRecord::Base
  has_many :office_direct_referrals
  has_many :minor_direct_referrals

  validates :number, :presence => true
  validates :number, :unique => true
end
