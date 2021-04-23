class AlarmsController < ApplicationController

  def index
    @today = Date.today
    @today_plan = Plan.find_by(date: @today)
  end

  def show
  end

end
