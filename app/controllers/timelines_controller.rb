class TimelinesController < ApplicationController

  before_filter :go_to_new_user_if_not_logged_in

  def index
    current_facebook_user.fetch
    @photos = current_facebook_user.albums.collect { |album| album.photos }.flatten.sort_by(&:created_time)

    @grouped_photos = @photos.group_by { |photo| photo.created_time[0, 7] }

    @photo_times = @grouped_photos.keys.sort

    @photos_im_in = current_facebook_user.photos
  end

  protected

  def go_to_new_user_if_not_logged_in
    redirect_to root_path unless current_facebook_user
  end

end
