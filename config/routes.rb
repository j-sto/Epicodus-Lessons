Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons/destroy', {:via => :get, :to => 'lessons#destroy'})
  match('lessons', {:via => :post, :to => 'lessons#create'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:id/edit', {:via => [:patch, :put], :to => 'lessons#update'})
  match('lessons/:id/delete', {:via => :get, :to => 'lessons#delete'})
  match('lessons/:id', {:via => :delete, :to => 'lessons#destroy'})
  match('lessons/:id/next', {:via => :get, :to => 'lessons#next'})
  match('lessons/:id/previous', {:via => :get, :to => 'lessons#previous'})
end
