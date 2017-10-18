Rails.application.routes.draw do
  get 'addresses/index'

  get 'addresses/new'

  get 'addresses/create'

  get 'addresses/edit'

  get 'addresses/update'

  get 'addresses/delete'

  get 'addresses/destroy'

  get 'customers/index'

  get 'customers/new'

  get 'customers/create'

  get 'customers/edit'

  get 'customers/update'

  get 'customers/delete'

  get 'customers/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
