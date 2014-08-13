Rails.application.routes.draw do

  resources :whiteboard_photos, only: [:new, :create, :show]

  root to: 'whiteboard_photos#new'
end
