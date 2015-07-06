Rails.application.routes.draw do
	resources :virtual_machines do
    get "delete"
  end
	
	 root "virtual_machines#index"

end
