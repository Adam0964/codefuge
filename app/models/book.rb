class Book < ActiveRecord::Base

  attr_accessible :author, 
  				  :description, 
  				  :pubDate, 
  				  :title, 
  				  :cover
end