Rails.application.routes.draw do
 root :to => "airlines#index"
 resources :passengers
  resources :flights do
    member do
      get 'show_passengers'
      get 'show_crew_members'
    end
  end
resources :airlines


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
