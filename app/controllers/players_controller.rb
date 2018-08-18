class PlayersController < ApplicationController

  before_action :set_player, only: %w(show edit update destroy)

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      respond_to do |format|
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
      end
    else
      format.html { render :new }
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
      end
    end
  end

  def destroy
    @player.destroy

    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
    end
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name)
  end
end
