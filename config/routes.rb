Rails.application.routes.draw do

resources :doses, only: [:destroy]
resources :cocktails, only: [:new, :index, :update, :show, :create, :destroy] do
  resources :doses, only: [:new, :create, :destroy] do
    resources :ingredients, only: [:new, :create, :destroy]
  end
end

end
