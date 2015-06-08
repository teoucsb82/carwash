class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :vehicles

  class Plans
    BASIC = 0
    SILVER = 1
    GOLD = 2
    PLATINUM = 3

    def self.all
      [self.basic, self.silver, self.gold, self.platinum]
    end

    def self.base
      { visits_per_month: "unlimited" }
    end

    def self.basic
      { name: "basic",
        subtext: "something",
        description: "something something something something",
        price: 39,
        cars: 1,
        locations: 1
      }.merge(self.base)
    end

    def self.silver
      { name: "silver",
        subtext: "something",
        description: "something something something something",
        price: 59,
        cars: 2,
        locations: 1
      }.merge(self.base)
    end

    def self.gold
      { name: "gold",
        subtext: "something",
        description: "something something something something",
        price: 79,
        cars: 3,
        locations: 1
      }.merge(self.base)
    end

    def self.platinum
      { name: "platinum",
        subtext: "something",
        description: "something something something something",
        price: 99,
        cars: 4,
        locations: 1
      }.merge(self.base)
    end
  end
end
