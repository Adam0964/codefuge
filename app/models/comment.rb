class Comment < ActiveRecord::Base

  attr_accessible :body, :commenter

  validates :body, :presence => {:message => "You need to put some comment in the body!"},
                   :length => { :minimum => 20 }
  validates :commenter, :presence => :true
                   
  belongs_to :post, :touch => true
  belongs_to :user, :touch => true
end