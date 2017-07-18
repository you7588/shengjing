Rails.application.routes.draw do
  resources :events do
    resources :attendees, :controller => 'event_attendees'
  end
  resources :people

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root :to => "welcome#index"
  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
end
