Rails.application.routes.draw do
	resources :virtual_machines
	
	 root "virtual_machines#index"

end
