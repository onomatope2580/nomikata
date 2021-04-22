class Ddfr
  include ActiveModel::Model

  attr_accessor :date, :alcohol_amount, :title, :comment, :user_id, :small_beer, :large_beer, :japanese_sake, :wine, :shochu, :wisky, :another_percentage, :another_amount,:d_name, :d_comment, :diary_id, :f_name, :f_comment, :r_name, :r_comment, :r_address, :drink_image, :food_image, :restaurant_image

  validates :date, :user_id, presence: true

  # def initialize(user_id, params = {}, diary, drink, food, restaurant)
  #   @diary ||= diary
  #   @drink ||= drink
  #   @food ||= Food.new
  #   @restaurant ||= Restaurant.new

  #   @diary.assign_attributes(user_id: params[:user_id], date: params[:date], alcohol_amount: params[:alcohol_amount], title: params[:title], comment: params[:comment], small_beer: params[:small_beer], large_beer: params[:large_beer], japanese_sake: params[:japanese_sake], wine: params[:wine], shochu: params[:shochu], wisky: params[:wisky], another_percentage: params[:another_percentage], another_amount: params[:another_amount])
  #   @drink.assign_attributes(d_name: params[:d_name], d_comment: params[:d_comment])
  #   @food.assign_attributes(f_name: params[:f_name], f_comment: params[:f_comment])
  #   @restaurant.assign_attributes(r_name: params[:r_name], r_comment: params[:r_comment], r_address: params[:r_address])

  #   super(params)
  # end

  # def to_model
  #   @diary
  #   @drink
  #   @food
  #   @restaurant
  # end


  def save
    diary = Diary.create(date: date, alcohol_amount: alcohol_amount, title: title, comment: comment, user_id: user_id, small_beer: small_beer, large_beer: large_beer, japanese_sake: japanese_sake, wine: wine, shochu: shochu, wisky: wisky, another_percentage: another_percentage, another_amount: another_amount)
    Drink.create(d_name: d_name, d_comment: d_comment, drink_image: drink_image, diary_id: diary.id)
    Food.create(f_name: f_name, f_comment: f_comment, food_image: food_image, diary_id: diary.id)
    Restaurant.create(r_name: r_name, r_comment: r_comment, r_address: r_address, restaurant_image: restaurant_image, diary_id: diary.id)
  end
end