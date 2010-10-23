class TimelinesController < ApplicationController

  def index
    current_facebook_user.fetch if current_facebook_user 
  end

end
