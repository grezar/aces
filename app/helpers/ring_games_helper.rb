module RingGamesHelper
  def starting_stack_as_bb
    as_bb = @ring_game.starting_stack / @ring_game.blind
    "#{as_bb}BB (#{@ring_game.starting_stack})"
  end
end
