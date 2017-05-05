Rails.application.routes.draw do
	devise_for :users

	# root to: "welcome#index"
	root('welcome#index')
	# root('posts#index')
	resources(:users)
	resources(:posts)
end
