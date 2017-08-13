class Plugins::CamaleonCmsRating::Rating < ActiveRecord::Base
  self.table_name = 'camaleon_cms_rating_ratings'

  belongs_to :post, class_name: 'CamaleonCms::Post'
  belongs_to :rater, class_name: PluginRoutes.static_system_info['user_model'].presence || 'CamaleonCms::User'

  validates_inclusion_of :score, in: (1..5).to_a
end
