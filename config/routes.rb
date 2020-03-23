Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cards, only: [:index, :new, :create, :edit, :show] do
    # collection do
    #   get :details
    # end
  end
end
