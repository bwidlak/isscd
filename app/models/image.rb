class Image < ActiveRecord::Base

  has_many :assets, foreign_key: 'asset_id'
  has_many :projects, through: :assets

  validates :url, presence: true

  def square_75x75 #_s
    url.gsub("_s.jpg","") + "_s.jpg"
  end

  def square_75x100 #_t
    url.gsub("_s.jpg","") + "_t.jpg"
  end

  def square_150x150 #_q
    url.gsub("_s.jpg","") + "_q.jpg"
  end

  def small_240 #_m
    url.gsub("_s.jpg","") + "_m.jpg"
  end

  def small_320 #_n
    url.gsub("_s.jpg","") + "_n.jpg"
  end

  # def medium_500 #
    # does not have size
  # end

  def medium_640 #_z
    url.gsub("_s.jpg","") + "_z.jpg"
  end

  def medium_800 #_c
    url.gsub("_s.jpg","") + "_c.jpg"
  end

  def large_1024 #_b
    url.gsub("_s.jpg","") + "_b.jpg"
  end

end
