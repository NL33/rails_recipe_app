class StarRating < ActiveRecord::Base
	#validates :rating, 1 to 5
 
	has_and_belongs_to_many :recipes
end