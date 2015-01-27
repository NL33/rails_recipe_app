class Recipe < ActiveRecord::Base
	validates :name, :presence => true
 
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :star_ratings

def average_rating
  ratings = []
  self.star_ratings.each do |star_rating|
		ratings << star_rating.rating
  end
  result = ratings.sum / ratings.size.to_f
  result.round(2)  #rounds the result to not more than two decimals
end


 def self.order_by_rating
   avg_ratings = {}
   recipes = Recipe.all
   recipes.each do |recipe|
      if recipe.average_rating >= 0 #included else 
         avg_ratings[recipe] = recipe.average_rating  #adds [recipe => recipe.average_rating] to hash
      end
    end
    avg_ratings.sort_by {|recipe, average_rating| average_rating}.reverse  #sorts hash
 end  #alternative: avg.keys.sort { |a, b| avg_ratings[b] <=> avg_ratings[a] }
    	#then can run <% Recipe.order_by_rating.each do |recipe| %>



end