# frozen_string_literal: true

class RecommendationsController < OpenReadController
  before_action :set_recommendation, only: %i[update destroy]

  # GET /recommendations
  def index
    @recommendations = Recommendation.all

    render json: @recommendations
  end

  # GET /recommendations/1
  def show
    @recommendation = Recommendation.find(params[:id])
    render json: @recommendation
  end

  # POST /recommendations
  def create
    @recommendation = current_user.recommendations.build(recommendation_params)

    if @recommendation.save
      render json: @recommendation, status: :created, location: @recommendation
    else
      render json: @recommendation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recommendations/1
  def update
    if @recommendation.update(recommendation_params)
      render json: @recommendation
    else
      render json: @recommendation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recommendations/1
  def destroy
    @recommendation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recommendation
    @recommendation = current_user.recommendations.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def recommendation_params
    params.require(:recommendation).permit(:title, :author, :user_id)
  end
end
