class AlarmsController < ApplicationController

  def index
    @today = Date.today
    @today_plan = Plan.find_by(date: @today)
    @user_weight = User.find(current_user.id).weight
  end

  def show
  end

end
