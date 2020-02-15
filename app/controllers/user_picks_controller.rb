class UserPicksController < ApplicationController
  before_action :set_user_pick, only: [:show, :update, :destroy]

  # GET /user_picks
  def index
    @user_picks = UserPick.all

    render json: @user_picks
  end

  # GET /user_picks/1
  def show
    render json: @user_pick
  end

  # POST /user_picks
  def create
    @user_pick = UserPick.new(user_pick_params)

    if @user_pick.save
      render json: @user_pick, status: :created, location: @user_pick
    else
      render json: @user_pick.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_picks/1
  def update
    if @user_pick.update(user_pick_params)
      render json: @user_pick
    else
      render json: @user_pick.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_picks/1
  def destroy
    @user_pick.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_pick
      @user_pick = UserPick.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_pick_params
      params.require(:user_pick).permit(:picks, :pick_points, :current_points)
    end
end
