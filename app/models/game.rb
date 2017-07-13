class Game < ApplicationRecord
  belongs_to :player_one, class_name: "Player"
  belongs_to :player_two, class_name: "Player"

  has_many :decisions

  before_create :assign_seed

  def game_state
    @game_state ||= begin
      game = Realms::Game.new(seed.to_i).start
      decisions.order(:id).each do |decision|
        game.decide(decision.key)
      end
      game
    end
  end

  private

  def assign_seed
    self.seed = Random.new_seed
  end
end
