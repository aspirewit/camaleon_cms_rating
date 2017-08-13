Rails.application.config.to_prepare do
  CamaleonCms::Post.class_eval do
    has_many :ratings, class_name: 'Plugins::CamaleonCmsRating::Rating'
  end
end
