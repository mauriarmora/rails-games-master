class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def dashboard
    @user = current_user
    @requested_bookings = @user.requested_bookings
    @bookings = @user.bookings
  end
end
