class Project < ActiveRecord::Base

  validates :title, :title, :permalink, presence: true

  before_validation :set_permalink

  has_many :assets
  has_many :descriptions, -> { where assets: { asset_type: 'description' } },
            through: :assets
  has_many :images, -> { where assets: { asset_type: 'image' } },
            through: :assets

  scope :published, -> { where(published: true)}

  def to_param
    permalink
  end

  def set_permalink
    self.permalink = title.parameterize
  end

end
