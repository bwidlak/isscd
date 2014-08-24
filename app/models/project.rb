class Project < ActiveRecord::Base

  validates :title, :title, :permalink, presence: true

  before_validation :set_permalink

  has_many :assets
  has_many :descriptions, -> { where assets: { asset_type: 'description' } },
            through: :assets
  has_many :images, -> { where assets: { asset_type: 'image' } },
            through: :assets
  
  belongs_to :parent, class_name: "Project", foreign_key: "project_id"
  has_many :children, class_name: "Project", foreign_key: "project_id"
  
  scope :published, -> { where(published: true) }
  scope :parents_only, -> { where(project_id: nil) }

  def to_param
    permalink
  end

  def set_permalink
    self.permalink = title.parameterize
  end

end
