class Image < ActiveRecord::Base

  has_many :assets, foreign_key: 'asset_id'
  has_many :projects, through: :assets

  validates :url, presence: true

  def square_75x75 #_s
    url.gsub(".jpg","") + "_s.jpg"
  end

  def square_75x100 #_t
    url.gsub(".jpg","") + "_t.jpg"
  end

  def square_150x150 #_q
    url.gsub(".jpg","") + "_q.jpg"
  end

  def small_240 #_m
    url.gsub(".jpg","") + "_m.jpg"
  end

  def small_320 #_n
    url.gsub(".jpg","") + "_n.jpg"
  end

  # def medium_500 #
    # does not have size
  # end

  def medium_640 #_z
    url.gsub(".jpg","") + "_z.jpg"
  end

  def medium_800 #_c
    url.gsub(".jpg","") + "_c.jpg"
  end

  def large_1024 #_b
    url.gsub(".jpg","") + "_b.jpg"
  end

  def large_1600 #_h
    url.gsub(".jpg","") + "_h.jpg"
  end

  def oryginal
    url.gsub(".jpg","") + "_o.jpg"
  end

end
