class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :transition_user

  def index
    @user = User.find(params[:user_id])
    @plans = @user.plans.all

    @today = Date.today
    # 今年の西暦
    @year = @today.year
    # 今日の月
    @month = @today.month
    # 今月の日数
    @day_num = Date.new(@year, @month, -1).mday
  end

  def new
    @plan_show = Plan.where(user_id: params[:user_id], date: params[:date])
    unless @plan_show.empty?
      redirect_to user_plan_path(id: @plan_show.ids)
    end
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
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to user_plans_path
    else
      render :edit
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:schedule, :alcohol_amount_plan).merge(date: params[:date], user_id: params[:user_id])
  end

  def transition_user
  end

end
