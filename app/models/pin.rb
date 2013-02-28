	class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :tag_list, :category_list, :fav
  acts_as_taggable
  acts_as_taggable_on :tags, :categories, :fav

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  														 size: { less_than: 5.megabytes }

  belongs_to :user    
  has_attached_file :image, styles: { medium: "320x240>"}
                    
  has_attached_file :image, styles:{ medium: "320x240>", thumb: "80x60>"},
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => ":attachment/:id/:style.:extension",
                    :bucket => "PIXELOVE_IMAGES"
                                      
                                      


  

  
end
