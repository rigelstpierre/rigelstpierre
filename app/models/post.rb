class Post < ActiveRecord::Base
  attr_accessible :published, :slug, :text, :title

  validates :title, :presence => true, :uniqueness => true
  validates :text, :presence => true
  validates :slug, :presence => true

end
