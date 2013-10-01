class Comment < ActiveRecord::Base

  attr_accessible :body, :commenter

  # include PublicActivity::Model
  # tracked  owner: ->(controller, model) { controller && controller.current_user }

  validates :body, :presence => {:message => "You need to put some comment in the body!"},
                   :length => { :minimum => 20 }
  validates :commenter, :presence => :true
                   

  belongs_to :post
  belongs_to :user
  has_many   :comments

end