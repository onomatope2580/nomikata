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
    # 曜日を取り出すインスタンス
    @days = ["(日)", "(月)", "(火)", "(水)", "(木)", "(金)", "(土)"]
  end

  def new
    @user = User.find(params[:user_id])
    @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    @user_safety_amount = @user_safety.round(1)
    @plan_show = Plan.where(user_id: params[:user_id], date: params[:date])
    unless @plan_show.empty?
      redirect_to user_plan_path(id: @plan_show.ids)
    end
    @plan = Plan.new(date: params[:date],user_id: params[:user_id])
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.schedule.empty? && (@plan.alcohol_amount_plan == nil || @plan.alcohol_amount_plan == 0)
      redirect_to user_plans_path
    elsif @plan.save
      redirect_to user_plans_path
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
