Rails.application.routes.draw do
	root "vms#index"
	resources :vms, :except => ['create']
	post 'vms/create' => 'vms#create', as: "create_vm"
end
