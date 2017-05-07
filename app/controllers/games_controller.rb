class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    p1 = Player.find_or_create_by!(username: "frog")
    p2 = Player.find_or_create_by!(username: "bear")
    @game = Game.new(player_one: p1, player_two: p2)

    if @game.save
      redirect_to @game, success: "Game created"
    else
      render :new
    end
  end
end
