class MatchDaysController < ApplicationController
  before_action :set_match_day, only: [:show, :update, :destroy]

  # GET /match_days
  def index
    @match_days = MatchDay.all

    render json: @match_days
  end

  # GET /match_days/1
  def show
    render json: @match_day
  end

  # POST /match_days
  def create
    @match_day = MatchDay.new(match_day_params)

    if @match_day.save
      render json: @match_day, status: :created, location: @match_day
    else
      render json: @match_day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /match_days/1
  def update
    if @match_day.update(match_day_params)
      render json: @match_day
    else
      render json: @match_day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /match_days/1
  def destroy
    @match_day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_day
      @match_day = MatchDay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def match_day_params
      params.require(:match_day).permit(:day, :game, :team_a, :team_a_points, :team_b, :team_b_points)
    end
end
