Rails.application.routes.draw do

  root to: 'students#index'

  resources :students do
    get 'download_send_file', action: :download_send_file
    get 'download_send_data', action: :download_send_data, as: :download_send_data
    get 'download_send_data_doc/:doc', action: :download_send_data_doc, as: :download_send_data_doc 
    post 'update_status', action: :update_status, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
