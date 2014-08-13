Rails.application.routes.draw do

  resources :whiteboard_photos, only: [:new, :create, :show] do
    member do
      get :download
    end
    resources :emails, only: :create, controller: :whiteboard_emails
  end



  root to: 'whiteboard_photos#new'
end
