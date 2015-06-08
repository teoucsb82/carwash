class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :vehicles

  class Plans
    BASIC = 0
    SILVER = 1
    GOLD = 2
    PLATINUM = 3
    DIAMOND = 4
  end
end
