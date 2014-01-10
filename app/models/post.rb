class Post < ActiveRecord::Base

  attr_accessible :content, 
                  :name, 
                  :title

  validates_presence_of :content

  validates :title, 
            :name, 
            :presence => true, 
            :length   => { :minimum => 5 }

  has_many :comments, 
           :dependent => :destroy
end
