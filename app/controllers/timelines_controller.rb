class TimelinesController < ApplicationController

  def index
    if current_facebook_user
      current_facebook_user.fetch
    end
  end

end
