Rails.application.routes.draw do

  resources :users
  resources :moods
  resources :mood_types do
    collection do
      get :reset , action: :reset, as: 'reset'
    end
  end

end
