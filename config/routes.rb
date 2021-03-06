Rails.application.routes.draw do
  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :update]
    post '/users/try', to: 'users#try'
    resource :session, only: [:create, :destroy]

    resources :foods, only: [:index]
    resources :food_diaries, only: [:show] do
      resources :food_loggings, only: [:create, :update, :destroy]
      resources :foods, only: [:create]
    end
    post '/food_diaries/find_diary', to: 'food_diaries#find_diary'

    resources :exercises, only: [:index]
    resources :exercise_diaries, only: [:show] do
      resources :exercise_loggings, only: [:create, :update, :destroy]
    end
    post '/exercise_diaries/find_diary', to: 'exercise_diaries#find_diary'

    get '/foods/search', to: 'foods#search'
    get '/exercises/search', to: 'exercises#search'
  end
end
