Rails.application.routes.draw do
  get 'credit_cards/open'
  get 'credit_cards/close'
  get 'credit_cards/shut'

  # enable view and controller

  # which controller and which action
  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/cat'

  # default route, will be gone in the future
  # get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
