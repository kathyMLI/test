Rails.application.routes.draw do
root :to => 'courses#index'
  get 'courses/index'

  get 'courses/new'

  get 'courses/create'

  get 'courses/show'

  get 'courses/edit'

  get 'courses/update'

  get 'courses/destroy'

  #root :to => 'teachers#index'
  get 'teachers/index'

  get 'teachers/new'

  get 'teachers/create'

  get 'teachers/show'

  get 'teachers/edit'

  get 'teachers/update'

  get 'teachers/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :courses  
end
