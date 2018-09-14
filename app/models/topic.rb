class Topic < ApplicationRecord
  #creates a method for a topic instance
  has_many :votes 
end
