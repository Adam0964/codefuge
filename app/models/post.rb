class Post < ActiveRecord::Base
  # include Bootsy::Container

  attr_accessible :content, 
                  :name, 
                  :title
                  # :bootsy_image_gallery_id

  validates_presence_of :content

  validates :title, 
            :name, 
            :presence => true, 
            :length   => { :minimum => 5 }

  has_many :comments, 
           :dependent => :destroy
end
