module Games
  class DecisionsController < ApplicationController
    def index
      @decisions = game.decisions
    end

    def create
      game.decisions.create!(params.require(:decision).permit(:key))
      redirect_to game
    end

    private

    def game
      @game ||= Game.find(params[:game_id])
    end
  end
end
