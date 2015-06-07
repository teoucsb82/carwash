class MembersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_user
  
  def billing
  end
  
  def profile
  end

  def settings
  end

  def vehicles
  end
end
