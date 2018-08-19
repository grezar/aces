class RingGame < ApplicationRecord
  has_many :ring_game_players
  has_many :players, through: :ring_game_players
end
