Rails.application.routes.draw do
	root "virtual_machines#index"
	resources :virtual_machines#, :except => ['create']
	# post 'vms/create' => 'vms#create', as: "create_vm"
end
