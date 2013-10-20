class Video < ActiveRecord::Base

  attr_accessible :caption, 
                  :title, 
                  :url
end
