class Ddfr
  include ActiveModel::Model

  attr_accessor :date, :alcohol_amount, :title, :comment, :user_id, :small_beer, :large_beer, :japanese_sake, :wine, :shochu, :wisky, :another_percentage, :another_amount,:d_name, :d_comment, :diary_id, :f_name, :f_comment, :r_name, :r_comment, :r_address

  validates :date, :user_id, presence: true

  def save
    diary = Diary.create(date: date, alcohol_amount: alcohol_amount, title: title, comment: comment, user_id: user_id, small_beer: small_beer, large_beer: large_beer, japanese_sake: japanese_sake, wine: wine, shochu: shochu, wisky: wisky, another_percentage: another_percentage, another_amount: another_amount)
    Drink.create(d_name: d_name, d_comment: d_comment, diary_id: diary.id)
    Food.create(f_name: f_name, f_comment: f_comment, diary_id: diary.id)
    Restaurant.create(r_name: r_name, r_comment: r_comment, r_address: r_address, diary_id: diary.id)
  end
end