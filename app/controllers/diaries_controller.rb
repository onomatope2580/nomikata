class DiariesController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def new
    @user = User.find(current_user.id)
    @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    @user_safety_amount = @user_safety.round(1)

    @today = Date.today

    @day_plan = Plan.find_by(date: @today)
    @ddfr = Ddfr.new
  end

  def create
    @ddfr = Ddfr.new(diary_params)
    if @ddfr.valid?
      @ddfr.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    # @user = User.find(current_user.id)
    # @user_safety = 0.1 * 833 * @user.weight * 0.8 / 100
    # @user_safety_amount = @user_safety.round(1)

    # @day = params[:date]

    # @day_plan = Plan.find_by(date: @day)
    # @diary = Diary.find(params[:id])
    # @food = Food.find_by(diary_id: @diary.id)
    # @drink = Drink.find_by(diary_id: @diary.id)
    # @restaurant = Restaurant.find_by(diary_id: @diary.id)
    # @ddfr = Ddfr.new(current_user.id, @diary, @drink, @food, @resturant)

  end

  def edit
  end

  def update
    binding.pry
  end

  def destroy
  end

  private

  def diary_params
    params.require(:ddfr).permit(:alcohol_amount, :title, :comment, :small_beer, :large_beer, :japanese_sake, :wine, :shochu, :wisky, :another_percentage, :another_amount,:d_name, :d_comment, :diary_id, :f_name, :f_comment, :r_name, :r_comment, :r_address, :drink_image, :food_image, :restaurant_image).merge(user_id: current_user.id, date: params[:date])
  end

end
