class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :players, id: :bigserial do |t|
      t.string :username

      t.timestamps
    end

    create_table :games, id: :bigserial do |t|
      t.string :seed
      t.bigint :player_one_id, null: false
      t.bigint :player_two_id, null: false

      t.timestamps
    end

    create_table :decisions, id: :bigserial do |t|
      t.string :key

      t.bigint :game_id, null: false
    end
  end
end
