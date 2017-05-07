module Games
  class DecisionsController < ApplicationController
    before_action :setup_game

    def create
      @game.decisions.create!(params.require(:decision).permit(:key))
      redirect_to @game
    end

    private

    def setup_game
      @game = Game.find(params[:game_id])
    end
  end
end
