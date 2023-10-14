Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #rutas de Devise
  devise_for :admins, 
  path: 'admin', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret'
  },
  controller: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations',
    passwords: 'admin/passwords',
    confirmations: 'admin/confirmations'
  }
end
