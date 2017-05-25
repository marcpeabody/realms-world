module Games
  class DecisionsController < ApplicationController
    before_action :setup_game

    def create
      decision = @game.decisions.create!(params.require(:decision).permit(:key))
      DecisionsChannel.broadcast_to(@game, decision)
      redirect_to @game
    end

    private

    def setup_game
      @game = Game.find(params[:game_id])
    end
  end
end
