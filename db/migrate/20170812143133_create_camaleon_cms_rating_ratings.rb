class CreateCamaleonCmsRatingRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :camaleon_cms_rating_ratings do |t|
      t.integer :score
      t.belongs_to :post
      t.belongs_to :rater
    end
  end
end
