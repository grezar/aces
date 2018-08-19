class RingGamesController < ApplicationController

  before_action :set_ring_game, only: %w(show edit udpate destroy)

  def new
    @players = Player.all
    @ring_game = RingGame.new
  end

  def create
    @ring_game = RingGame.new(ring_game_params)

    if @ring_game.save
      respond_to do |format|
        format.html { redirect_to @ring_game }
      end
    else
      respond_to do |format|
        format.html { render :new }
      end
    end
  end

  def show
    @players = @ring_game.players
  end

  def edit
  end

  def update
    @ring_game.update
  end

  def destroy
  end

  private

  def set_ring_game
    @ring_game = RingGame.find(params[:id])
  end

  def ring_game_params
    params.require(:ring_game).permit(:blind, :starting_stack, player_ids: []).merge(number_of_times: get_number_of_times)
  end

  def get_number_of_times
    just_before = RingGame.last
    return 1 if just_before.nil?
    if reset_count?(just_before.created_at)
      number_of_times_per_day = 1
    else
      number_of_times_per_day = just_before.number_of_times + 1
    end
    number_of_times_per_day
  end

  def time_now
    Time.current
  end

  def reset_count?(just_before_date)
    return true if just_before_date.nil?
    now = time_now
    now > six_am_on_today && just_before_date < six_am_on_today
  end

  def six_am_on_today
    time_now.beginning_of_day + 6.hour
  end
end
