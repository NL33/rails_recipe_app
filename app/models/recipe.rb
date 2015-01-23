class Recipe < ActiveRecord::Base
	validates :name, :presence => true
 
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :star_ratings

def average_rating
  ratings = []
  self.star_ratings.each do |star_rating|
		ratings << star_rating.rating
  end
  ratings.sum / ratings.size.to_f
end

end