Rails.application.routes.draw do

  resources :messages
  resources :appointments
  resources :feedbacks
  resources :scaffolds
  resources :test_methods
  resources :criterions
  resources :administrators
  resources :opening_hours
  resources :regions
  resources :patients
  resources :testcenters
  resources :testcenter_staffs
  resources :coordinates
  resources :contact_data
  resources :testcenters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'testcenters/:id/criterions', to: 'testcenters#set_criteria'
  post '/testcenters/:id/staff_login', to: 'testcenters#staff_login'

  get 'appointments/:id/canceled', to: 'appointments#cancel_appointment'
  get 'appointments/:id/processed', to: 'appointments#process_appointment'

end
