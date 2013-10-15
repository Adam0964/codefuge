class Book < ActiveRecord::Base
  attr_accessible :author, :description, :pubDate, :title, :cover
  
  # searchable do 
  #   string  :author
  #   string  :title
  #   integer :pubDate
  # end

end