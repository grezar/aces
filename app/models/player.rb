class Player < ApplicationRecord
  has_many :ring_game_players
  has_many :ring_games, through: :ring_game_players
end
