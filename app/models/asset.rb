class Asset < ActiveRecord::Base

  belongs_to :image, foreign_key: 'asset_id'
  belongs_to :description, foreign_key: 'asset_id'
  belongs_to :project

  # def self.images
  #   where(asset_type: 'image').map { |a| a.image }
  # end

  # def self.descriptions
  #   where(asset_type: 'image').map { |a| a.image }
  # end

end
