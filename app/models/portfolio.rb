class Portfolio < ActiveRecord::Base
  attr_accessible :client, :image, :published, :text, :title

  # validates :title, :presense => true, :uniqueness => true
  # validates :text, :presense => true
  # validates :client, :presense => true

  mount_uploader :image, ImageUploader
end
