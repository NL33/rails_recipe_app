Rails.application.routes.draw do

#recipes
  match('/', {:via => :get, :to => 'recipes#index'})
  match('recipes', {:via => :get, :to => 'recipes#index'}) 
  match('/recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/new', {:via => :post, :to => 'recipes#create'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  
#tags
  match('recipes/:recipe_id/tags/new', {:via => :post, :to => 'tags#create'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})

#star_ratings
  match('recipes/:recipe_id/star_ratings/new', {:via => :post, :to => 'star_ratings#create'})

  #match('/sections/:section_id/lessons/new', {:via => :get, :to => 'lessons#new'}) #Not used. Provied for illustration. This could be used if wanted to link to new lesson page from a section show page, and creating lesson would automatically link lesson to that section.
  #match('/sections/:section_id/lessons', {:via => :post, :to => 'lessons#create'}) #Not used. Provied for illustration. This could be used (with above unused route) if wanted to link to new lesson page from a section show page, and creating lesson would automatically link lesson to that section.
  #match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  #match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'}) 
  #match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'}) #not usedmatch('/sightings/:sighting_id', 
  #match('lessons/:id', {:via => :delete, :to => 'lessons#destroy'}) 

#Sections
  #match('/sections/new', {:via => :get, :to => 'sections#new'})
  #match('/sections/new', {:via => :post, :to => 'sections#create'})
  #match('sections/:id', {:via => :get, :to => 'sections#show'}) 
  #match('sections/:id', {:via => :delete, :to => 'sections#destroy'}) 

#Chapters
  #match('/', {:via => :get, :to => 'chapters#index'})
  #match('chapters', {:via => :get, :to => 'chapters#index'}) 
  #match('chapters/new', {:via => :get, :to => 'chapters#new'})
  #
  #
  #match('chapters/:id', {:via => :delete, :to => 'chapters#destroy'})  


end
