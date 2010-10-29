class UsersController < ApplicationController

  before_filter :go_to_timelines_if_logged_in

  protected

  def go_to_timelines_if_logged_in
    redirect_to timelines_path if current_facebook_user
  end

end
