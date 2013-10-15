class Post < ActiveRecord::Base

  attr_accessible :content, :name, :title

  validates_presence_of :content

  validates :title, :name, :presence => true, 
                           :length => { :minimum => 5 }

  has_many :comments, :dependent => :destroy

  # searchable do
  # 	text :title, :boost => 5, :stored => true
  # 	text :content
  #   text :comments do
  #      comments.map { |comment| comment.body }
  #    end

  # 	# text :comments do
  # 	# 	comments.map(&:content)
  # 	# end
  # 	time :created_at
    
  #   string :sort_title do
  #   title.downcase.gsub(/^(an?|the)\b/, '')
  #   end
  # end
end
