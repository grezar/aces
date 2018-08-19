class RingGamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :ring_game
end
