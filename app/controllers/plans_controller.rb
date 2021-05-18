class PlansController < ApplicationController
  before_action :authenticate_user!
  before_action :user_safety_amount, except: :update
  before_action :create_date, only: :index

  def index
    @plans = @user.plans.all
    @diaries = @user.diaries.all
  end

  def new
    @plan_show = Plan.where(user_id: current_user.id, date: params[:date])
    unless @plan_show.empty?
      redirect_to plan_path(id: @plan_show.ids)
    end
    @plan = Plan.new(date: params[:date],user_id: current_user.id)
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.schedule.empty? && @plan.small_beer == nil && @plan.large_beer == nil && @plan.japanese_sake == nil && @plan.wine == nil && @plan.shochu == nil && @plan.wisky == nil && @plan.another_percentage == nil && @plan.another_amount == nil && (@plan.alcohol_amount_plan == nil || @plan.alcohol_amount_plan == 0)
      render :new
    elsif @plan.save
      redirect_to plans_path
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @diary = Diary.find_by(date: @plan.date)
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to plans_path
    else
      render :show
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:schedule, :alcohol_amount_plan, :small_beer, :large_beer, :japanese_sake, :wine, :shochu, :wisky, :another_percentage, :another_amount).merge(date: params[:date], user_id: current_user.id)
  end

  def user_safety_amount
    @user = User.find(current_user.id)
    @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    @user_safety_amount = @user_safety.round(1)
  end

  def create_date
    @today = Date.today
    @year = @today.year
    @month = @today.month
    @day_num = Date.new(@year, @month, -1).mday
    @days = ["(日)", "(月)", "(火)", "(水)", "(木)", "(金)", "(土)"]
  end

end
