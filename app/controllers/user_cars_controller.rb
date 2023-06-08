class UserCarsController < ApplicationController
  def index
    @user_cars = current_user.cars
  end
end
