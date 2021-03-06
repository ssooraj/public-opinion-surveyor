Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'polls#voter'

	resource :polls do
		get :voter
		post :save_response
		get :thanks
	end

	resources :responses do
		collection do
			get :fetch_data
		end
	end
end
