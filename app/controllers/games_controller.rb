class GamesController < ApplicationController
  def show
    @game = Realms::Game.new.start
  end
end
