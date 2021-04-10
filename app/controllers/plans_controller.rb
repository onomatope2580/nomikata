class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :transition_user

  def index
    @plans = Plan.includes(:user)

    @today = Date.today
    # 今年の西暦
    @year = @today.year
    # 今日の月
    @month = @today.month
    # 今月の日数
    @day_num = Date.new(@year, @month, -1).mday
  end

  def new
    @plan = Plan.new(date: params[:date],user_id: params[:user_id])
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to user_plans_path
    else
      render :new
    end
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def plan_params
    params.require(:plan).permit(:schedule, :alcohol_amount_plan).merge(date: params[:date], user_id: params[:user_id])
  end

  def transition_user
  end

end
