class CreateRecipesTags < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
   	  t.belongs_to :recipie, index: true  #this column removed. Other column belongs_to :recipe added
      t.belongs_to :tag, index: true
    end
  end
end

