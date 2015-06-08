class Vehicle < ActiveRecord::Base
  belongs_to :user
  belongs_to :subscription
  validates_presence_of :make, :model, :licenseplate

  def status
    "active"
  end
end
