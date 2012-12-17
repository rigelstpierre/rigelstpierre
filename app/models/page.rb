class Page < ActiveRecord::Base
  attr_accessible :published, :text, :title

  validates :title, :presence => true, :uniqueness => true
  validates :text, :presence =>  true
end
