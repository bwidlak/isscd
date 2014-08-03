class Description < ActiveRecord::Base

  validates :text, presence: true

  has_many :assets
  has_many :projects, -> { where assets: { asset_type: 'description' } },
            through: :assets

end
