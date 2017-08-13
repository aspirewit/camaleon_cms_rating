class Plugins::CamaleonCmsRating::FrontController < CamaleonCms::Apps::PluginsFrontController
  include Plugins::CamaleonCmsRating::MainHelper

  def index
    # actions for frontend module
  end

  # add custom methods below
  def create
    @rating = Plugins::CamaleonCmsRating::Rating.new(
      score: params[:score],
      post_id: params[:post_id],
      rater_id: cama_current_user.try(:id)
    )

    head @rating.save ? :ok : :bad_request
  end
end
