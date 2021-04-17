class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :transition_user

  def index
    @user = User.find(params[:user_id])
    @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    @user_safety_amount = @user_safety.round(1)
    @plans = @user.plans.all
    plans = @user.plans.all

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
    @user = User.find(params[:user_id])
    @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    @user_safety_amount = @user_safety.round(1)
    @plan = Plan.new(plan_params)
    if @plan.schedule.empty? && @plan.small_beer == nil && @plan.large_beer == nil && @plan.japanese_sake == nil && @plan.wine == nil && @plan.shochu == nil && @plan.wisky == nil && @plan.another_percentage == nil && @plan.another_amount == nil && (@plan.alcohol_amount_plan == nil || @plan.alcohol_amount_plan == 0)
      render :new
    elsif @plan.save
      redirect_to user_plans_path
    end
  end

  def show
    @user = User.find(params[:user_id])
    @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    @user_safety_amount = @user_safety.round(1)
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to user_plans_path
    else
      render :show
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:schedule, :alcohol_amount_plan, :small_beer, :large_beer, :japanese_sake, :wine, :shochu, :wisky, :another_percentage, :another_amount).merge(date: params[:date], user_id: params[:user_id])
  end

  def transition_user
  end

end
