class GamesController < ApplicationController
  
  def index
  end

  def show
    @game = Game.find(params[:id])
  end

  def start
    @game = Game.find(params[:id])
    @theme = @game.themes.where( 'id >= ?', rand(@game.themes.first.id..@game.themes.last.id) ).first
  end

  def punish
    @punishment = Punishment.where( 'id >= ?', rand(Punishment.first.id..Punishment.last.id) ).first
  end

end
